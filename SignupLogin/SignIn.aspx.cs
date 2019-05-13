using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupLogin_SignIn : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["users"] = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var data = ProjectDB.Users.Where(h=> h.Email==txtEmail.Text && h.Password==txtPassword.Text).FirstOrDefault() ;
        if (data!= null)
        {

            Session["users"] = data.FirstName+" "+data.LastName;
            Session["uid"] = data.UserId;
            Session["R"] = data.UserRole;

            if (data.UserRole=="Admin")
            {
                Response.Redirect("~/Users/Admin/Default.aspx");
                //Response.Redirect("~/Users/Admin/Default.aspx");
            }
            else if (data.UserRole == "Employee")
            {
                Response.Redirect("~/Users/Admin/Default.aspx");
            }
            if (data.UserRole == "Customer")
            {
                Response.Redirect("~/Default.aspx");
            }

        }
        else
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
    }
}