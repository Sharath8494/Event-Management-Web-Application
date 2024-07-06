using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;

namespace Eve_managent
{
    public partial class Manage_venue : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);

                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")

                    Response.Write("<script> alert('Enter empty field');</script>");

                con.Open();
                SqlCommand cmdToCheckName = new SqlCommand("select * from Venue where name='" + TextBox1.Text + "'", con);
                SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckName);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                if (dt.Rows.Count > 0)

                    Response.Write("<script> alert('already  Venue name is exit');</script>");
                else
                {

                    SqlCommand cmd = new SqlCommand("insert into Venue values(@name,@capacity,@cost,@image)", con);
                    cmd.Parameters.AddWithValue("name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("capacity", TextBox2.Text);
                    cmd.Parameters.AddWithValue("cost", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@image", filepath);
                    cmd.ExecuteNonQuery();
                    Session["image"] = Image1.ImageUrl;
                    Session["cap"] = TextBox2.Text;
                    Image1.Visible = true;
                    Image1.ImageUrl = "~/Images/" + filename;
                    con.Close();



                    Response.Write("<script> alert('record insert successfully');</script>");
                    LoadRecord();
                    
                }

            }
        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from Venue", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            //GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select *  from  Venue where name = '" + TextBox1.Text + "'", con);

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Close();



                    SqlCommand cmd1 = new SqlCommand("delete  from  Venue where name='" + TextBox1.Text + "' ", con);
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
            TextBox2.Text = "";
            TextBox3.Text = "";
            Image1.ImageUrl = "";

        }
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string filepath = Server.MapPath("~/Images/" + filename);
                FileUpload1.SaveAs(filepath);
                con.Open();
                SqlCommand cmd = new SqlCommand("update Venue set image=@image  where name='" + TextBox1.Text + "'", con);
               cmd.Parameters.AddWithValue("@image", "~/Images/" + filename);
                cmd.ExecuteNonQuery();
                filename = "~/Images/" + filename;
                con.Close();
            }
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from Venue ", con);
            SqlDataReader sdr = cmd2.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Close();
                SqlCommand cmd3 = new SqlCommand("update Venue set name=@name,capacity=@capacity,cost=@cost where name='" + TextBox1.Text + "'", con);
                cmd3.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd3.Parameters.AddWithValue("@capacity", TextBox2.Text);
                cmd3.Parameters.AddWithValue("@cost", TextBox3.Text);
                //cmd3.Parameters.AddWithValue("@image", filepath);

                cmd3.ExecuteNonQuery();
                Response.Write("<script>alert('Update successfully');</script>");
                LoadRecord();
                con.Close();
            }

            else
            {
                Response.Write("<script> alert('Name Does not Exist To Update');</script>");
            }
        }
    }
}