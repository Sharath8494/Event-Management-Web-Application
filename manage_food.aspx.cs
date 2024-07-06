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
    public partial class manage_food : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }

            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Food values(@food_type)", con);
                cmd.Parameters.AddWithValue("@food_type", TextBox1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('record insert successfully');</script>");
                LoadRecord();
            }
        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from Food", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select *  from  Food where food_type = '" + TextBox1.Text + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Close();
                    SqlCommand cmd1 = new SqlCommand("delete  from Food where food_type='" + TextBox1.Text + "' ", con);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script> alert('record delete successfully');</script>");
                    LoadRecord();
                }
                else
                {
                    Response.Write("<script> alert('record does not exit');</script>");

                }


            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}