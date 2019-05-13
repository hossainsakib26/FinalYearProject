using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_Default : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

        var data = ProjectDB.Order_Details.GroupBy(d=> d.BookISBN).ToList();
        var data1 = data.Select(d => new { isbn= d.Key, Total=  d.Sum(f => f.SalesPrice),bcount = d.Count()});
        //Label1.Text = data;
        GridView1.DataSource = data1;
        GridView1.DataBind();

        Chart2.DataSource = data1;
        
        Chart2.DataBind();
    } 
}