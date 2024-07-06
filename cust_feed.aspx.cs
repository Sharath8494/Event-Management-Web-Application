using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class cust_feed : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
            con.Open();
            SqlCommand cmd = new SqlCommand("select email from reg where email='" + Session["Email"] + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox2.Text = rd["email"].ToString();


            }
            rd.Close();
            con.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {

                Label4.Visible = true;

                Label4.Text = "Review  must be required";

            }
            else
            {


                
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into rating values(@Email,@Feedback,@Review)", con);
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Feedback", ratinglist.SelectedValue);
                cmd.Parameters.AddWithValue("@Review", TextBox1.Text);


                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Thank You For Your Feedback');</script>");
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         Response.Redirect("Event_view.aspx");
        }
    }
}