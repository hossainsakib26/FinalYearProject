using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Publisher : System.Web.UI.Page
{
    DataTable dt;
    decimal total;
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //call dropdown data
            var PubData = ProjectDB.Publishers.ToList();
            DropDownListPublisher.DataSource = PubData;
            DropDownListPublisher.DataTextField = "PublisherName";
            DropDownListPublisher.DataValueField = "Id";
            DropDownListPublisher.DataBind();

            var data = ProjectDB.Books.Select(d => new { d.ISBN, d.BookName, d.Category.CategoryName, d.SubCategory.SubCategoryName, d.Photo, d.Price, d.Publisher.PublisherName, d.AUTHOR.AuthorName, d.PublishDate }).ToList();
            DataList1.DataSource = data;
            DataList1.DataBind();
            if (Session["dt"] == null)
            {

            
            dt = new DataTable();
            DataColumn ISBN = new DataColumn("Book ISBN");
            DataColumn BookName = new DataColumn("Book Name");
            DataColumn Quantity = new DataColumn("Book Quantity");
            DataColumn Price = new DataColumn("Price");
            DataColumn TotalPrice = new DataColumn("Total Price");

            dt.Columns.Add(ISBN);
            dt.Columns.Add(BookName);
            dt.Columns.Add(Quantity);
            dt.Columns.Add(Price);
            dt.Columns.Add(TotalPrice);
            }
            else
            {
                dt = (DataTable)Session["dt"];
                lblInCart.Text = dt.Rows.Count.ToString();
            }
            //Session["dt"] = dt;
        }
        else
        {
            dt = (DataTable)Session["dt"];
        }
    }

    private bool addQuantity(string ISBN, int salesQty)
    {
        foreach (DataRow item in dt.Rows)
        {
            if (item[0].ToString() == ISBN)
            {
                int tqty = salesQty + Int32.Parse(item[2].ToString());
                item[2] = tqty;
                item[4] = tqty * Convert.ToDecimal(item[3].ToString());

                return true;
            }
        }
        return false;
    }

    protected void DropDownListPublisher_SelectedIndexChanged(object sender, EventArgs e)
    {
        int PubId = Int32.Parse(DropDownListPublisher.SelectedValue);
        var data = ProjectDB.Books.Where(f => f.PublisherId == PubId).Select(d => new { d.ISBN, d.BookName, d.Category.CategoryName, d.SubCategory.SubCategoryName, d.Photo, d.Price, d.Publisher.PublisherName, d.AUTHOR.AuthorName, d.PublishDate }).ToList();
        DataList1.DataSource = data;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "pc")
        {

            string ISBN = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelISBN")).Text;
            string BookName = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelName")).Text;
            string Category = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelCategory")).Text;
            string Price = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelPrice")).Text;

            int salesQty = Int32.Parse(((DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("drpQuantity")).Text);

            if (!addQuantity(ISBN, salesQty))
            {
                DataRow dr = dt.NewRow();
                //dr.[]
                dr[0] = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelISBN")).Text;
                dr[1] = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelName")).Text;
                dr[2] = salesQty;
                dr[3] = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("LabelPrice")).Text;
                dr[4] = Convert.ToInt32(dr[2]) * Convert.ToDecimal(dr[3]);

                dt.Rows.Add(dr);
            }
            lblInCart.Text = dt.Rows.Count.ToString();
        }
    }
}