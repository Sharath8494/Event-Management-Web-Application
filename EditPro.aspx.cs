using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class EditPro : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from reg where email='" + Session["Email"] + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    TextBox1.Text = rd["name"].ToString();
                    //TextBox2.Text = rd["DOB"].ToString();
                    DateTime a = Convert.ToDateTime(rd["DOB"]);
                    string b = a.ToShortDateString();
                    TextBox2.Text = b;
                    TextBox3.Text = rd["Contact"].ToString();
                    TextBox4.Text = rd["address"].ToString();
                    TextBox5.Text = rd["email"].ToString();
                    TextBox6.Text = rd["password"].ToString();
                    string c = rd["Profile"].ToString();
                    profilePicture.ImageUrl = c;

                }
                rd.Close();
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Response.Write("<script>alert('Please enter a Empty feild');</script>");
            }
            if (profilePictureUpload.HasFile)
            {
                string filename = Path.GetFileName(profilePictureUpload.FileName);
                string filepath = Server.MapPath("~/Images/" + filename);
                profilePictureUpload.SaveAs(filepath);

                SqlCommand cmd = new SqlCommand("update reg set Profile=@profile where email='" + Session["Email"] + "'", con);
                con.Open();
                cmd.Parameters.AddWithValue("@profile", "~/Images/" + filename);
                cmd.ExecuteNonQuery();
                profilePicture.ImageUrl = "~/Images/" + filename;


                con.Close();
            }
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select * from reg  ", con);

            SqlDataReader sdr = cmd1.ExecuteReader();

            if (sdr.HasRows)
            {
                sdr.Close();
                SqlCommand cmd2 = new SqlCommand("update reg set name=@name,DOB=@dob,Contact=@contact,address=@add,email=@email,password=@pass where email='" + Session["Email"] + "'", con);

                cmd2.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@dob", TextBox2.Text);
                cmd2.Parameters.AddWithValue("@contact", TextBox3.Text);
                cmd2.Parameters.AddWithValue("@add", TextBox4.Text);
                cmd2.Parameters.AddWithValue("@email", TextBox5.Text);
                cmd2.Parameters.AddWithValue("@pass", TextBox6.Text);
                cmd2.ExecuteNonQuery();



                Response.Write("<script>alert('Update successfully');</script>");
                con.Close();

            }
        }
    }
}
