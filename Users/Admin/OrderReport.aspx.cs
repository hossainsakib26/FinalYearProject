using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_OrderReport : System.Web.UI.Page
{

    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {


            int idn = Int32.Parse(Request.QueryString["id"]);
            var data = ProjectDB.Orders.Where(oo => oo.OrderId == idn).FirstOrDefault();

            lblOrderId.Text = data.OrderId.ToString();
            lblGrandTotal.Text = data.GrandTotal.ToString();
            lblUserId.Text = data.UserId.ToString();
            lblUserName.Text = data.UserName.ToString();
            lblOrderDate.Text = data.OrderDate.ToString();
            lblDelivaryStatus.Text = data.DeliveryStatus.ToString();
            lblRecvPerson.Text = data.Shippings.Where(dd=> dd.OrderId==idn).FirstOrDefault().ReceivingPersonName;
            lblRecvPerson.Text = data.Shippings.Where(dd => dd.OrderId == idn).FirstOrDefault().ReceivingPersonNumber;
            //var shidata = ProjectDB.Shippings.Where(shi => shi.ShippingId == idn).FirstOrDefault();
            //lblRecvPerson.Text = shidata.ReceivingPersonName.ToString();
            //lblPersonPhoneNumber.Text = shidata.ReceivingPersonNumber.ToString();

            GridView1.DataSource = ProjectDB.Order_Details.Where(d => d.OrderID == idn).ToList();
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("ShowOrders.aspx");
        }


    }
}