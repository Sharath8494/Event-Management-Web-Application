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
    public partial class Cancel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Booking where id='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Event Canceled Seccessfully');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Status.aspx");
        }
    }
}