using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_SubCategory : System.Web.UI.Page
{

    myDatabaseEntities projectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drpCatID.DataSource = projectDB.Categories.ToList();
            drpCatID.DataTextField = "CategoryName";
            drpCatID.DataValueField = "Id";
            drpCatID.DataBind();

            //getAllsubCat();
            GridView1.DataBind();
        }
    }

    //private void getAllsubCat()
    //{
    //    //throw new NotImplementedException();
    //    GridView1.DataSource = projectDB.SubCategories.Select(d => new
    //    {
    //        d.Category.CategoryName,d.SubCategoryName}).ToList();
    //    GridView1.DataBind();
    //}

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SubCategory scat = new SubCategory();
        //Category cat = new Category();
        //scat.CategoryId = cat.Id;
        scat.CategoryId = int.Parse(drpCatID.Text);
        //scat.Id = int.Parse(txtSubCId.Text);
        scat.SubCategoryName = txtSubCategoryName.Text;

        projectDB.SubCategories.Add(scat);
        projectDB.SaveChanges();
        GridView1.DataBind();
        //getAllsubCat();
        Response.Redirect(Request.FilePath);

    }
}