using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_SendEmailToEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["users"] == null)
        //{
        //    Response.Redirect("~/SignupLogin/SignIn.aspx");
        //}
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(txtTo.Text);
        mail.From = new System.Net.Mail.MailAddress("bookbd123@gmail.com", "Admin", System.Text.Encoding.UTF8);
        mail.Subject = txtSubject.Text;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = txtBody.Text;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = System.Net.Mail.MailPriority.High;

        if (FileUpload1.HasFile)
        {
            string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            mail.Attachments.Add(new System.Net.Mail.Attachment(FileUpload1.PostedFile.InputStream, FileName));
        }

        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("bookbd123@gmail.com", "Sakib!09129");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;

        try
        {
            client.Send(mail);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert: ('email sent successfully!')");
        }
        catch (Exception ex)
        {

            Literal1.Text = ex.Message;
        }
    }
}