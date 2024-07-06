using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Refund : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;




            SqlCommand cmd = new SqlCommand("select Event,card,cvv,date from Payment where id=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {

                string email = rd["Event"].ToString();
                string Card = rd["card"].ToString();
                string Cvv = rd["cvv"].ToString();

                string date = rd["date"].ToString();
                TextBox2.Text = email;
                TextBox3.Text = Card;
                TextBox4.Text = Cvv;
                TextBox5.Text = date;

            }
            rd.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(id)from Payment where card='" + TextBox3.Text + "' and cvv='" + TextBox4.Text + "'", con);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                if (count >= 1)
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select amount from Booking where id='" + TextBox1.Text + "' ", con);
                    int cost1 = Convert.ToInt32(cmd1.ExecuteScalar());
                    con.Close();
                    double total = cost1 * 0.75;
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("select amount from Payment where card='" + TextBox3.Text + "' and cvv='" + TextBox4.Text + "'", con);
                    int cost2 = Convert.ToInt32(cmd2.ExecuteScalar());
                    con.Close();
                    double total2 = total;

                    con.Open();
                    SqlCommand cmd3 = new SqlCommand("update Payment set amount='" + total2 + "' where card='" + TextBox3.Text + "' and cvv='" + TextBox4.Text + "'", con);
                    cmd3.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script> alert('Amount refund to your Bank');</script>");


                    con.Open();

                    SqlCommand cmd5 = new SqlCommand("select Status from Payment  Where id='" + TextBox1.Text + "' ", con);

                    SqlDataReader sdr = cmd5.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        string b = "Refund";
                        sdr.Close();
                        SqlCommand cmd15 = new SqlCommand("update Payment set Status=@Status where id='" + TextBox1.Text + "' ", con);
                        cmd15.Parameters.AddWithValue("@Status", b);
                        cmd15.ExecuteNonQuery();
                        con.Close();

                    }

                }
                else
                {
                    Response.Write("<script> alert('Incorrect Details');</script>");
                }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Status.aspx");
        }
    }
}