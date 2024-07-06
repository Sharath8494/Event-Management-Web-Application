using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class manage_decoration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True"); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
            Image1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                if (TextBox1.Text == "" || TextBox2.Text == "")

                    Response.Write("<script> alert('Enter empty field');</script>");
                con.Open();
                SqlCommand cmdToCheckName = new SqlCommand("select * from Decoration where decoration_type='" + TextBox1.Text + "'", con);
                SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckName);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                if (dt.Rows.Count > 0)

                    Response.Write("<script> alert('already  Decoration type is exit');</script>");

                else
                {

                    SqlCommand cmd = new SqlCommand("insert into Decoration values(@decoration_type,@cost,@image)", con);
                    cmd.Parameters.AddWithValue("@decoration_type", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@cost", Int32.Parse(TextBox2.Text));
                    cmd.Parameters.AddWithValue("@image", filepath);
                    cmd.ExecuteNonQuery();
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
            SqlCommand cmd = new SqlCommand("select * from Decoration", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            //GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select *  from  Decoration where decoration_type = '" + TextBox1.Text + "'", con);
               SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Close();
                    SqlCommand cmd1 = new SqlCommand("delete  from   Decoration where decoration_type='" + TextBox1.Text + "' ", con);
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
            Image1.ImageUrl = "";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string filepath = Server.MapPath("~/Images/" + filename);
                FileUpload1.SaveAs(filepath);
                con.Open();
                SqlCommand cmd = new SqlCommand("update Decoration set image=@image  where decoration_type='" + TextBox1.Text + "'", con);

                cmd.Parameters.AddWithValue("@image", "~/Images/" + filename);
                cmd.ExecuteNonQuery();

                filename = "~/Images/" + filename;

                con.Close();
            }
            con.Open();

            SqlCommand cmd2 = new SqlCommand("select * from Decoration ", con);

            SqlDataReader sdr = cmd2.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Close();
                SqlCommand cmd3 = new SqlCommand("update Decoration set decoration_type=@decoration_type,cost=@cost where decoration_type='" + TextBox1.Text + "'", con);
                cmd3.Parameters.AddWithValue("@decoration_type", TextBox1.Text);
                cmd3
                    .Parameters.AddWithValue("@cost", Int32.Parse(TextBox2.Text));

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