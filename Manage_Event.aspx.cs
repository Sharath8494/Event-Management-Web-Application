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
    public partial class Manage_Event : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                if (TextBox1.Text == "")
                    Response.Write("<script> alert('Enter empty field');</script>");
                con.Open();
                SqlCommand cmdToCheckName = new SqlCommand("select name from Event where name='" + TextBox1.Text + "'", con);

                SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckName);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                if (dt.Rows.Count > 0)

                    Response.Write("<script> alert('already  Event name is exit');</script>");
                else
                {

                    if (TextBox1.Text == "")
                    {
                        Response.Write("<script> alert('Enter empty field');</script>");
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("insert into Event values(@name,@image)", con);
                        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@image", filepath);
                        Image1.Visible = true;
                        Image1.ImageUrl = "~/Images/" + filename;


                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script> alert('record insert successfully');</script>");
                        LoadRecord();
                    }
                }
            }

        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from Event", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            //GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script> alert('Enter empty field');</script>");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select *  from  Event where name='" + TextBox1.Text + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Close();
                    SqlCommand cmd1 = new SqlCommand("delete  from  Event where name='" + TextBox1.Text + "'", con);
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

        protected void Button3_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            Image1.AlternateText = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}





