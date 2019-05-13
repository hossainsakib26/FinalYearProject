using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_CompleteDelevary : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var data = ProjectDB.Orders.Where(d => d.DeliveryStatus == "Deliver").ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }
}