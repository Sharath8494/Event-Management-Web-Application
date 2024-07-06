using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class ResetPassuser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox4.Text)
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("update reg set Password='" + TextBox3.Text + "'where email='" + Session["Emailid"] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label5.Text = "Password Change Sucessfully";

                Response.Redirect("C_Login.aspx.aspx");
            }
            else
            {
                Response.Write("<script> alert('Password does not match');</script>");

            }
        }
    }
}