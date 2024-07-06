using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Adminlog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Enter Admin Email Id')</script>");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select count(*)from Adminlog where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
                con.Open();
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    Response.Redirect("Manage_Event.aspx");
                }

                else
                {
                    Label4.Visible = true;
                    Label4.Text = "Invalid Admin";
                }
            }
        }
    }
}