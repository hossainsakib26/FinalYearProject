using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_AddNewBook : System.Web.UI.Page
{
    myDatabaseEntities projectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //dropdown for category
            drpCatID.DataSource = projectDB.Categories.ToList();
            drpCatID.DataTextField = "CategoryName";
            drpCatID.DataValueField = "Id";
            drpCatID.DataBind();

           
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

            // help to load automatic page
            //getAllBook();
        }
    }



    protected void btnInsert_Load(object sender, EventArgs e)
    {
        Book B = new Book();

        B.ISBN = txtBookISBN.Text;
        B.BookName = txtBookName.Text;
        B.CategoryId = int.Parse(drpCatID.SelectedValue);
        B.SubCategoryID = int.Parse(drpSbCat.Text);


        //if (FileUpload1.HasFiles)
        //{

        B.Photo = FileUpload1.FileBytes;
        //}

        B.Price = decimal.Parse(txtPrice.Text);
        B.PublisherId = int.Parse(drpPubID.Text);
        B.AuthorId = int.Parse(drpAuID.Text);
        B.PublishDate = DateTime.Parse(txtDate.Text);
        B.Quantity = Int32.Parse(txtquantity.Text);//Txt box lagbe

        projectDB.Books.Add(B);
        projectDB.SaveChanges();

        var stdata = projectDB.Stocks.Where(st => st.BookISBN == B.ISBN).FirstOrDefault();
        if (stdata != null)
        {
            stdata.Quantity = B.Quantity + stdata.Quantity;
            projectDB.SaveChanges();
        }
        else
        {
            Stock ss = new Stock();

            ss.BookISBN = B.ISBN;
            ss.Quantity = B.Quantity;
            ss.SubCategoryId = B.SubCategoryID;
            ss.CategoryId = B.CategoryId;

            projectDB.Stocks.Add(ss);
            projectDB.SaveChanges();
        }
        //getAllBook();
        lblMessage.Text = "New book successfully added";
        //Response.Redirect(Request.FilePath);
        
    }

    protected void drpCatID_SelectedIndexChanged(object sender, EventArgs e)
    {
        //dropdown for subcategory
        int x = Int32.Parse(drpCatID.SelectedValue.ToString());
        drpSbCat.DataSource = projectDB.SubCategories.Where(d => d.CategoryId == x).ToList();
        drpSbCat.DataTextField = "SubCategoryName";
        drpSbCat.DataValueField = "Id";
        drpSbCat.DataBind();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Book.aspx");
    }
}