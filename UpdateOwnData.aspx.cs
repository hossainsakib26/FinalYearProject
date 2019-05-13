using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateOwnData : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //need Name
        int cdata = int.Parse(Session["uid"].ToString());

        var data = ProjectDB.Users.Where(c => c.UserId == cdata).FirstOrDefault();

        txtFName.Text = data.FirstName;
        txtLName.Text = data.LastName;
        lblEmail.Text = data.Email;
        
        lblPhone.Text = data.UserPhone;

    }

    protected void ibtnConfirm_Click(object sender, ImageClickEventArgs e)
    {
        int cdata = int.Parse(Session["uid"].ToString());

        var data = ProjectDB.Users.Where(c => c.UserId == cdata).FirstOrDefault();

        data.FirstName = txtFName.Text;
        data.LastName = txtLName.Text;
        data.Password = txtNewPass.Text;

        if (txtOldPass.Text == data.Password)
        {
            ProjectDB.SaveChanges();
        }
        else
        {
            lblMessage.Text = "Invalid Old Password";
            return;
        }

        lblMessage.Text = "Data Update Successfully";
    }
}