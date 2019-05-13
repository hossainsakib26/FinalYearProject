using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_AddCategory1 : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Category cat = new Category();
        //cat.Id = int.Parse(txtId.Text);
        cat.CategoryName = txtCategoryName.Text;

        ProjectDB.Categories.Add(cat);
        ProjectDB.SaveChanges();
        Response.Redirect(Request.FilePath);
    }
    
}