using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_BookStock : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}
        if (!IsPostBack)
        {
            getAllStocks();
        }

    }

    private void getAllStocks()
    {
        GridView1.DataSource = ProjectDB.Stocks.ToList();
        GridView1.DataBind();
    }



    protected void btnInsert_Load(object sender, EventArgs e)
    {
        
    }

   
}