using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Profit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            TextBox7.Visible = false;
            Label1.Visible = false;
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            string id = TextBox1.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("select Event,amount from Payment where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    string Event = rd["Event"].ToString();
                    string Amount = rd["amount"].ToString();
                    TextBox2.Text = Event;
                    TextBox3.Text = Amount;

                }
                rd.Close();
                con.Close();

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select amount from Payment where id=@id", con);
                cmd1.Parameters.AddWithValue("@id", id);
                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.Read())
                {
                    string Amount = rd1["amount"].ToString();
                    TextBox7.Text = Amount;
                }
                rd1.Close();
                con.Close();

                con.Open();
                SqlCommand cmd5 = new SqlCommand("select Status from Payment  Where id='" + TextBox1.Text + "' ", con);
                SqlDataReader rd5 = cmd5.ExecuteReader();
                if (rd5.Read())
                {
                    string Status = rd5["Status"].ToString();
                    TextBox6.Text = Status;
                }
                rd5.Close();
                con.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            string Event = TextBox2.Text;
            decimal Amount = decimal.Parse(TextBox3.Text);
            decimal Expense = CalculateAmount(Event, Amount);
            TextBox4.Text = Expense.ToString();

            


        }
        private decimal CalculateAmount(string Event, decimal Amount)
        {
            decimal Expense = 0;
            if (Event == "Wedding" && Amount > 100000 && Amount <= 150000)
            {
                Expense = 100000;
            }
            else if (Event == "Wedding" && Amount > 150000 && Amount <= 200000)
            {
                Expense = 150000;
            }
            else if (Event == "Wedding" && Amount > 200000 && Amount <= 300000)
            {
                Expense = 200000;
            }

            else if (Event == "Birthday" && Amount <= 50000)
            {
                Expense = 40000;

            }
            else if (Event == "Birthday" && Amount >= 50000 && Amount < 100000)
            {
                Expense = 65000;
            }
            else if (Event == "Birthday" && Amount > 100000)
            {
                Expense = 100000;

            }
            return Expense;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            string Status = TextBox6.Text;
            if (Status == "Refund")
            {
                decimal Total = Decimal.Parse(TextBox3.Text);
                decimal Refund = Decimal.Parse(TextBox7.Text);

                decimal Profit = Total - Refund;
                TextBox5.Text = Profit.ToString();
                Button3.Visible = true;
                TextBox4.Visible = false;

            }
            else
            {


                decimal amount = Decimal.Parse(TextBox3.Text);
                decimal expense = Decimal.Parse(TextBox4.Text);

                decimal profit = amount - expense;
                TextBox5.Text = profit.ToString();
                
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmdToCheckId = new SqlCommand("select * from Profit where id='" + TextBox1.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmdToCheckId);
            DataTable dt = new DataTable();
            con.Close();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)

                Response.Write("<script> alert('Already Saved');</script>");
            else
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Profit values(@id,@Event,@Amount,@Expense,@Profit)", con);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Event", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Amount", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Expense", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Profit", TextBox5.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Saved Successss');</script>");
                LoadRecord();
                con.Close();
            }
        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from Profit", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string Status = TextBox6.Text;
            if (Status == "Refund")
            {
                TextBox7.Visible = true;
                Label1.Visible = true;
                TextBox3.Visible = true;
                Button2.Visible = true;
                TextBox5.Visible = true;
                Label2.Visible = false;
            }
            else
            {
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                Button1.Visible = true;
                Button2.Visible = true;
                Button3.Visible = true;
                Label2.Visible = true;
                Label1.Visible = true;

            }

        }
    }
    
}