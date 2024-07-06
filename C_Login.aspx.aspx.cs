using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class C_Login_aspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Email"] = TextBox3.Text;
            SqlCommand cmd = new SqlCommand("select count(*)from reg where email='" + TextBox3.Text + "'and password='" + TextBox4.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("Event_view.aspx");
            }

            else
            {
                Label5.Text = "Your email id or password invalid";
            }
        }
    }
}