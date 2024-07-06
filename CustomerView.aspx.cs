using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class CustomerView : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Button7.Visible = false;
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == " ")
            {
                Response.Write("<script> alert('Please enter Booking ID')</script>");
            }
            else
            { 
                Button2.Visible = true;
                Button7.Visible = true;
                string id = TextBox1.Text;
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Booking where id=@id", con);
                
                cmd.Parameters.AddWithValue("@id", id);

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    rd.Close();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    dt = dt.DefaultView.ToTable();
                    GridView1.DataBind();
                    con.Close();
                }


                string Pay = TextBox1.Text;


                LoadRecord1();

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from Payment where id=@id", con);
                
                cmd1.Parameters.AddWithValue("@id", Pay);

                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.Read())
                {
                    rd1.Close();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                    dt = dt.DefaultView.ToTable();
                    GridView2.DataBind();
                    con.Close();
                }
            }
            
        }
        void LoadRecord()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Booking  Where id='" + TextBox1.Text + "' ", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();    
        }

        void LoadRecord1()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from Payment  Where id='" + TextBox1.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close() ;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;

            con.Open();
            SqlCommand cmd = new SqlCommand("select status from Booking  Where id='" + TextBox1.Text + "' ", con);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                string b = "Cancel";
                sdr.Close();
                SqlCommand cmd1 = new SqlCommand("update Booking set Status=@Status where id='" + TextBox1.Text + "' ", con);
                cmd1.Parameters.AddWithValue("@Status", b);
                cmd1.ExecuteNonQuery();

                Response.Write("<script> alert ('Your event is cancelrd seccessfully');</script>");
                con.Close();
                LoadRecord();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pymt.aspx");
        }
    }
    
}