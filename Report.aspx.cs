using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Eve_managent
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.Visible = false;
            Label1.Visible = false;
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from Venue ", con);
                SqlDataReader rd1 = cmd1.ExecuteReader();

                while (rd1.Read())
                {
                    string value = rd1["name"].ToString();
                    string text = rd1["name"].ToString();

                    ListItem item = new ListItem(text, value);
                    DropDownList1.Items.Add(item);


                }
                rd1.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else 
            { 

                DateTime sdate = Convert.ToDateTime(TextBox1.Text);
                DateTime edate = Convert.ToDateTime(TextBox2.Text);
                if (sdate > edate)
                {
                    Response.Write("<script> alert('Enter A Valid Date')</script>");

                }
                else
                {
                    string conn = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                    SqlConnection con = new SqlConnection(conn);
                    string sqlquerry = "select *from Booking where date between'" + TextBox1.Text + "'and'" + TextBox2.Text + "'";
                    SqlCommand cmd = new SqlCommand(sqlquerry, con);
                    con.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    if (sqlDataReader.Read())
                    {
                        GridView1.Visible = true;
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "No Record Found";
                    }
                    con.Close();
                }
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {
                GridView1.Visible = true;
                string conn = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from Booking where Venue='" + DropDownList1.Text + "'", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                if (sqlDataReader.Read())
                {
                    GridView2.Visible = true;
                    GridView2.DataSource = dt;
                    GridView2.DataBind();

                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "No Record Found";
                }
                con.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {
                GridView1.Visible = true;
                GridView2.Visible = true;
                string conn = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from Booking where Event='" + TextBox4.Text + "'", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                if (sqlDataReader.Read())
                {
                    GridView3.Visible = true;
                    GridView3.DataSource = dt;
                    GridView3.DataBind();

                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "No Record Found";
                }
                con.Close();
            }
        }
    }
}