using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GroupMasterPage : System.Web.UI.MasterPage
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"]!=null)
        //{
        //    uname.InnerText= Session["users"].ToString();
        //}
        //else
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}


        if (Session["users"] != null && Session["R"].ToString() == "Customer")
        {
            uname.InnerText = Session["users"].ToString();
            //Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
        else
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }

    }

}
