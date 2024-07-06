using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class AForgotPass : System.Web.UI.Page
    {
        string randomcode;
        public static string to;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Enter Email Id')</script>");

            }
            else
            {
                SqlCommand cmd = new SqlCommand("select count(*)from Adminlog where email='" + TextBox1.Text + "'", con);
                con.Open();
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    string from, pass, messagebody;
                    Random rand = new Random();
                    randomcode = (rand.Next(9999)).ToString();
                    MailMessage message = new MailMessage();
                    to = (TextBox1.Text).ToString();
                    from = "dreamevents159@gmail.com";
                    pass = "fuwpdkhkmactidro";
                    messagebody = "Your OTP is " + randomcode;
                    message.To.Add(to);
                    message.From = new MailAddress(from);
                    message.Body = messagebody;
                    message.Subject = "Password Reset Code";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                    smtp.EnableSsl = true;
                    smtp.Port = 587;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, pass);
                    try
                    {
                        smtp.Send(message);
                        Response.Write("<script> alert('OTP is sent to your e mail');</script>");

                        Label4.Text = randomcode;
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
                else
                {

                    Label5.Text = "Your Email Id doesn't Registered";
                    Label5.Visible = true;
                }
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                Response.Write("<script> alert('Enter OTP Sent your Email ID')</script>");

            }
            else
            {
                if (Label4.Text == TextBox2.Text.ToString())
                {
                    //to = TextBox1.Text;
                    Session["Emailid"] = TextBox1.Text;
                    Label6.Text = "verified sucessfull";
                    Response.Redirect("ResetPassAdmin.aspx");
                }
                else
                {
                    Response.Write("<script> alert('OTP does not match');</script>");
                }
            }
        }
    }
}