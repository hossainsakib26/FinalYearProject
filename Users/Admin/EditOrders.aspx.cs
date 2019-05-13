using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_EditOrders : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}
        if (Request.QueryString["id"] != null)
        {
            int idn = Int32.Parse(Request.QueryString["id"]);
            var data = ProjectDB.Orders.Where(oo => oo.OrderId == idn).FirstOrDefault();

            lblOrderId.Text = data.OrderId.ToString();
            lblUserID.Text = data.UserId.ToString();
            lblUserName.Text = data.UserName.ToString();
            lblOrderDate.Text = data.OrderDate.ToString();
            lblGrandTotal.Text = data.GrandTotal.ToString();

            DropDownList1.Text = data.DeliveryStatus.ToString();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int idn = Int32.Parse(Request.QueryString["id"]);
        var data = ProjectDB.Orders.Where(oo => oo.OrderId == idn).FirstOrDefault();

        data.DeliveryStatus= DropDownList1.Text;
        ProjectDB.SaveChanges();
        Response.Redirect("~/Users/Admin/ShowOrders.aspx");

    }
}