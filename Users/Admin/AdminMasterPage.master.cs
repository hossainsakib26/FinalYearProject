using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_AdminMasterPage : System.Web.UI.MasterPage
{
        protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] != null && Session["R"].ToString() == "Admin")
        {
            Auname.InnerText = Session["users"].ToString();
            //Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
        else
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
    }
}
