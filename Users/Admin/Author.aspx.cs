using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_Author : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //GridViewAuthor.DataSource = ProjectDB.AUTHORs.ToList();
            GridViewAuthor.DataBind();
        }

    }
    protected void btnCalendar_Click(object sender, EventArgs e)
    {
        
    }
    protected void Calendar_DOB_SelectionChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnInsert_Click(Object sender, EventArgs e)
    {
        AUTHOR au = new AUTHOR();
        au.AuthorName = txtAuthorName.Text;
        //date needed
        au.DateOfBirth = DateTime.Parse(txtBDate.Text);
        
        au.Address = txtAddress.Text;

        ProjectDB.AUTHORs.Add(au);
        ProjectDB.SaveChanges();
        //GridViewAuthor.DataSource = ProjectDB.AUTHORs.ToList();
        GridViewAuthor.DataBind();

        Response.Redirect(Request.Url.ToString());


        //AUTHOR au = new AUTHOR();
        //au.AuthorName = txtAuthorName.Text;
        ////date needed
        //au.DateOfBirth = DateTime.Parse(txtBDate.Text);

        //au.Address = txtAddress.Text;

        //ProjectDB.AUTHORs.Add(au);
        //ProjectDB.SaveChanges();

        //GridViewAuthor.DataBind();
    }

    protected void GridViewAuthor_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //GridViewAuthor.EditIndex = e.NewEditIndex;
        //GridViewAuthor.DataBind();
      
    }


}