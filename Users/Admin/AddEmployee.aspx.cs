using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Admin_AddEmployee : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddEmployee_Click(object sender, EventArgs e)
    {
        User u = new User();

        u.FirstName = txtFirstName.Text;
        u.LastName = txtLastName.Text;
        u.Gender = DropDownListGender.Text;
        
        u.Email = txtEmail.Text;

        Random rnd = new Random();
        int x = rnd.Next();
        u.Password = x.ToString();

        u.UserRole = DropDownList2.Text;
        u.UserPhone = txtPhoneNUmber.Text;

        ProjectDB.Users.Add(u);
        ProjectDB.SaveChanges();

        
           

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(u.Email);
            mail.From = new System.Net.Mail.MailAddress("bookbd123@gmail.com", "Admin", System.Text.Encoding.UTF8);
            mail.Subject = "Confirm your Job in the system";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Dear " + u.FirstName+ " " + u.LastName + "Your password is : " + x.ToString();
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
            lblConfirmation.Text = ex.Message;
            }

        }
}