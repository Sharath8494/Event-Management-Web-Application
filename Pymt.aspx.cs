using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Pymt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;

            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from Booking where id='" + Session["id"] + "'", con);
            SqlDataReader rd1 = cmd1.ExecuteReader();
            if (rd1.Read())
            {
                TextBox1.Text = rd1["id"].ToString();
            }
            rd1.Close();
            con.Close();

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Booking where Event='" + Session["email"] + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox2.Text = rd["Event"].ToString();
                TextBox6.Text = rd["amount"].ToString();
            }
            rd.Close();
            con.Close();

        }
        private bool IsValidExpiration(string expiration)
        {
            if (expiration.Length == 5 && expiration[2] == '/')
            {

                string[] parts = expiration.Split('/');
                if (int.TryParse(parts[0], out int month) && int.TryParse(parts[1], out int year))
                {
                    if (month >= 1 && month <= 12 && year >= DateTime.Now.Year % 100)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string expiration = TextBox5.Text;
            if (!IsValidExpiration(expiration))
            {
                Label1.Visible = true;
                Label1.Text = "Invalid expiration date.";
                return;
            }
            con.Open();
            SqlCommand cmdToCheckId = new SqlCommand("select * from Payment where id='" + TextBox1.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckId);
            DataTable dt = new DataTable();
            con.Close();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)

                Response.Write("<script> alert('Already Paid');</script>");
            else
            {
                con.Open();
                string a = "Paid";

                SqlCommand cmd = new SqlCommand("insert into Payment values(@id,@Event,@card,@cvv,@date,@amount,@Status)", con);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Event", TextBox2.Text);

                cmd.Parameters.AddWithValue("@card", TextBox3.Text);
                cmd.Parameters.AddWithValue("@cvv", TextBox4.Text);

                cmd.Parameters.AddWithValue("@date", TextBox5.Text);
                cmd.Parameters.AddWithValue("@amount", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Status", a);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Payment paid successfully');</script>");
                string redirectScript = "setTimeout(function(){window.location.href='CustomerView.aspx';},1000);";
                ClientScript.RegisterStartupScript(this.GetType(), "redirectScript", redirectScript, true);
                con.Close();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CustomerView.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("select Event,amount from Booking where id=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                string Event= rd["Event"].ToString();
                string Amount = rd["amount"].ToString();
                TextBox2.Text = Event;
                TextBox6.Text = Amount;
            }
            rd.Close();
            con.Close();
        }
    }
}