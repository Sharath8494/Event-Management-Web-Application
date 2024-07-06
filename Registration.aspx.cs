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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator1.MinimumValue = DateTime.Now.AddYears(-70).ToShortDateString();
            RangeValidator1.MaximumValue = DateTime.Now.AddYears(-05).ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            con.Open();
            SqlCommand cmdToCheckEmail = new SqlCommand("select * from reg where email='" + TextBox2.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckEmail);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)

                Response.Write("<script> alert('Email isalready  exist');</script>");

            else
            {
                SqlCommand cmd = new SqlCommand("insert into reg values(@name,@email,@password,@Contact,@DOB,@address,@Profile)", con);
                cmd.Parameters.AddWithValue("@name", TextBox8.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox5.Text);
                cmd.Parameters.AddWithValue("@DOB", TxtDob.Text);
                cmd.Parameters.AddWithValue("@address", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Profile", DBNull.Value);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Register Sucessfully');</script>");

                Response.Redirect("C_Login.aspx.aspx");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox8.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox7.Text = " ";
            TxtDob.Text = " ";
        }
    }
}