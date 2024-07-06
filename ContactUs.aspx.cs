using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress(TextBox2.Text);
                    mailMessage.To.Add("dreamevents159@gmail.com");
                    mailMessage.Subject = TextBox3.Text;
                    mailMessage.Body = "<b>Sender name: </b>" + TextBox1.Text + "<br/>"
                                + "" + "<b>Sender Email: </b>" + TextBox2.Text + "<br/>"
                                + "<b>Comments: </b>" + TextBox4.Text + "<br/>";
                    mailMessage.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("dreamevents159@gmail.com", "fuwp dkhk mact idro");
                    smtpClient.Send(mailMessage);
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Thank you for contacting us";
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                    Button1.Enabled = false;
                }
            }
            catch (Exception)
            {
                Label1.ForeColor = System.Drawing.Color.Blue;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "There is an unknow problem. please try later";
            }
        }

    }
}