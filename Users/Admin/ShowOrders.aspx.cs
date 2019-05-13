using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_ShowOrders : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}
        var data = ProjectDB.Orders.Where(d => d.DeliveryStatus != "Deliver").ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }
    protected void btnOrderReport_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Users/Admin/OrderReport.aspx");      
    }
}