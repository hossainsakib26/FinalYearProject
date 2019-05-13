using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupLogin_Login : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            User u = new User();
            u.FirstName = txtFirstName.Text;
            u.LastName = txtLastName.Text;
            u.Email = txtEmail.Text;
            u.Password = txtConfirmPassword.Text;
            u.Gender = drpGender.Text;
            u.UserPhone = txtPhone.Text;
            u.UserRole = "Customer";
            ProjectDB.Users.Add(u);
            ProjectDB.SaveChanges();

            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
        catch (Exception)
        {
           
                lblEmail.Text = "Email already Taken";
            
        }
    }
}