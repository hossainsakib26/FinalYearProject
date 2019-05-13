using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BillingShipping : System.Web.UI.Page
{
    myDatabaseEntities ProjectDB = new myDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("~/SignupLogin/SignIn.aspx");
        }

    }

    protected void btnOrderRequest_Click(object sender, EventArgs e)
    {
        
            Shipping s = new Shipping();
            s.ReceivingPersonName = txtReceivingPerson.Text;
            s.ReceivingPersonNumber = txtPhoneNumber.Text;
            s.ShippingAddress = txtAddress.Text;
            s.DeliveryProcess = drpDelivaryProcess.Text;
            s.OrderId = int.Parse(Session["oid"].ToString());
            s.UserId = int.Parse(Session["uid"].ToString());

            ProjectDB.Shippings.Add(s);
            ProjectDB.SaveChanges();

            var myorder = ProjectDB.Orders.Where( od => od.OrderId==s.OrderId).FirstOrDefault();

            int x = Int32.Parse(Session["uid"].ToString());
            var udata = ProjectDB.Users.Where(uem => uem.UserId==  x).FirstOrDefault();

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(udata.Email);
            mail.From = new System.Net.Mail.MailAddress("bookbd123@gmail.com", "Admin", System.Text.Encoding.UTF8);
            mail.Subject = "Order Confirmation";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Dear "+ udata.FirstName+ " " + udata.LastName+"<br/>" +" Your Order ID:"+ myorder.OrderId+ "<br/>" + " Order Date:" +myorder.OrderDate + "<br/>" + " Total Price:" + myorder.GrandTotal + "<br/>" + " To:" + myorder.Shippings.FirstOrDefault().ReceivingPersonName + "<br/>" + "Contact Number-" + myorder.Shippings.FirstOrDefault().ReceivingPersonNumber;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = System.Net.Mail.MailPriority.High;

           
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("bookbd123@gmail.com", "109129!007!");
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
                //LBLConfirmation.Text = ex.Message;
            }
    }

    protected void btnOrderMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}