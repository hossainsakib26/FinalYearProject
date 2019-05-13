using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditOwnData : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"]==null)
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }
        int cdata = int.Parse( Session["uid"].ToString());

        var data = ProjectDB.Users.Where(c=> c.UserId == cdata).FirstOrDefault();

        lblFirstName.Text = data.FirstName;
        lblLastName.Text = data.LastName;
        lblEmail.Text = data.Email;
        lblGender.Text = data.Gender;
        lblPhone.Text = data.UserPhone;

    }

    protected void ibtnUpdate_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("UpdateOwnData.aspx");
    }

    protected void ibtnBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}