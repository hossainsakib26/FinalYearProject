using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_ModifyBook : System.Web.UI.Page
{

    myDatabaseEntities projectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}

        if (!IsPostBack)
        {
            //dropdown for category
            drpCatID.DataSource = projectDB.Categories.ToList();
            drpCatID.DataTextField = "CategoryName";
            drpCatID.DataValueField = "Id";
            drpCatID.DataBind();

            //dropdown for subcategory
            drpSbCat.DataSource = projectDB.SubCategories.ToList();
            drpSbCat.DataTextField = "SubCategoryName";
            drpSbCat.DataValueField = "Id";
            drpSbCat.DataBind();

            //dropdown for publishers
            drpPubID.DataSource = projectDB.Publishers.ToList();
            drpPubID.DataTextField = "PublisherName";
            drpPubID.DataValueField = "Id";
            drpPubID.DataBind();

            //drop down for authors
            drpAuID.DataSource = projectDB.AUTHORs.ToList();
            drpAuID.DataTextField = "AuthorName";
            drpAuID.DataValueField = "Id";
            drpAuID.DataBind();



            if (Request.QueryString["d"] != null)
            {
                Label1.Text = Request.QueryString["d"].ToString();
                //int bno = Int32.Parse(Label1.Text);
                var bdata = projectDB.Books.Where(d => d.ISBN == Label1.Text).FirstOrDefault();

                txtBookName.Text = bdata.BookName;
                drpCatID.SelectedValue = bdata.CategoryId.ToString();
                drpSbCat.SelectedValue = bdata.SubCategoryID.ToString();
                drpPubID.SelectedValue = bdata.PublisherId.ToString();
                drpAuID.SelectedValue = bdata.AuthorId.ToString();

                if (bdata.Price != null)
                    txtPrice.Text = ((decimal)bdata.Price).ToString(".00");
                if (bdata.PublishDate!=null)
                txtDate.Text = ((DateTime)bdata.PublishDate).ToString("yyyy/MM/dd");

                Image1.ImageUrl = "myHandler.ashx?id="+bdata.ISBN;
            }
            else
            {
                Response.Redirect("Book.aspx");
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //update
        try
        {
            //int bno = Int32.Parse(Label1.Text);
            var bdata = projectDB.Books.Where(d => d.ISBN == Label1.Text).FirstOrDefault();
            if (bdata!=null)
            {
                bdata.BookName = txtBookName.Text;
                bdata.CategoryId = int.Parse(drpCatID.Text);
                bdata.SubCategoryID = int.Parse(drpSbCat.Text);

                bdata.PublisherId = int.Parse(drpPubID.Text);
                bdata.AuthorId = int.Parse(drpAuID.Text);

                if (FileUpload1.HasFile)
                {
                    lblPhoto.Text = FileUpload1.FileName;

                    bdata.Photo = FileUpload1.FileBytes;
                  
                }
                bdata.Price = decimal.Parse(txtPrice.Text);
                bdata.PublishDate = DateTime.Parse(txtDate.Text);

                projectDB.SaveChanges();
                Response.Redirect("Book.aspx");

            }
            else
            {
                Literal1.Text = "Data can not update!!! :( ";
            }
        }
        catch (Exception ex1)
        {

            Literal1.Text="Error : "+ex1.Message;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        //Delete

        try
        {
            //int bno = Int32.Parse(Label1.Text);
            var bdata = projectDB.Books.Where(d => d.ISBN == Label1.Text).FirstOrDefault();

            if (bdata != null)
            {
                projectDB.Books.Remove(bdata);
                projectDB.SaveChanges();
                Response.Redirect("~/Users/Admin/Book.aspx");
            }
            else
            {
                Literal1.Text = "Data can not update!!! :( ";
            }
        }
        catch (Exception)
        {

            Literal1.Text = "";
        }
    }
}