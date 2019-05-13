using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupLogin_ForgotPassword : System.Web.UI.Page
{

    myDatabaseEntities projectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        //int idn = Int32.Parse(Session["uid"].ToString());
        var data = projectDB.Users.Where(d => d.Email == txtForgotEmail.Text).FirstOrDefault();
        if (data != null)
        {
            Random rnd = new Random();
            int x = rnd.Next();
            data.Password = x.ToString();

            projectDB.SaveChanges();

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(data.Email);
            mail.From = new System.Net.Mail.MailAddress("bookbd123@gmail.com", "Admin", System.Text.Encoding.UTF8);
            mail.Subject = "Reset Password";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Dear " + Session["uname"] + "Your password is : "+x.ToString();
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = System.Net.Mail.MailPriority.High;            

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
}