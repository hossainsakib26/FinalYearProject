using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_Publisher : System.Web.UI.Page
{
    myDatabaseEntities projectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Publisher pub = new Publisher();
        //pub.Id = int.Parse(txtpubId.Text);
        pub.PublisherName = txtPubName.Text;
        pub.PhoneNumber = txtPubNum.Text;
        //Category cat = new Category();
        //pub.CategoryId = int.Parse(txtCatID.Text);
        //SubCategory scat = new SubCategory();
        //pub.SubCategoryId = int.Parse(txtSubCId.Text);

        projectDB.Publishers.Add(pub);
        projectDB.SaveChanges();

        Response.Redirect(Request.FilePath);
    }

}