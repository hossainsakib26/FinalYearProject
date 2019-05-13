using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CartItems : System.Web.UI.Page
{
    DataTable dt;
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
        //if (!IsPostBack)
        //{
         dt = (DataTable)Session["dt"];
            //GridView1.DataSource = (DataTable)Session["dt"];
            GridView1.DataSource = dt;
            GridView1.DataBind();

            lblGtotal.Text = grandTotal().ToString();
        //}
    }
    public decimal grandTotal()
    {
        decimal gtotal = 0;
        foreach (GridViewRow r in GridView1.Rows)
        {
            gtotal += Decimal.Parse(r.Cells[5].Text);
        }
        return gtotal;
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        myDatabaseEntities db = new myDatabaseEntities();

        Order ord = new Order();
        ord.UserId = Int32.Parse( Session["uid"].ToString());
        ord.UserName =Session["users"].ToString();
        ord.OrderDate = DateTime.Parse(DateTime.Now.ToShortDateString());
        ord.GrandTotal = decimal.Parse(lblGtotal.Text);
        ord.DeliveryStatus = "Undelivered";

        db.Orders.Add(ord);
        db.SaveChanges();

       

        foreach (GridViewRow r in GridView1.Rows)
        {
            Order_Details od = new Order_Details();

            od.BookISBN = r.Cells[1].Text;
            od.BookName = r.Cells[2].Text;
            od.SalesQuantity = Int32.Parse(r.Cells[3].Text);
            od.SalesPrice = decimal.Parse(r.Cells[4].Text);
            od.SalesTotal = decimal.Parse(r.Cells[5].Text);
            od.OrderID = ord.OrderId;

            db.Order_Details.Add(od);
            db.SaveChanges();

            var sdata = ProjectDB.Stocks.Where(d => d.BookISBN == od.BookISBN).FirstOrDefault();

            sdata.Quantity = sdata.Quantity - od.SalesQuantity;
            ProjectDB.SaveChanges();

        }


        Session["oid"] = ord.OrderId;
        Response.Redirect("~/BillingShipping.aspx");

        //GridView1.DataSource = (DataTable)Session["dt"];
        //GridView1.DataSource = dt;
        //GridView1.DataBind();

        //Session["dt"] = null;
        //gvDetails.DataSource = db.Order_Details.Where(d => d.OrderID == ord.OrderId).ToList();
        // gvDetails.DataBind();
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
     
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dt.Rows.RemoveAt(e.RowIndex);
        GridView1.DataBind();

        lblGtotal.Text = grandTotal().ToString();
    }
}