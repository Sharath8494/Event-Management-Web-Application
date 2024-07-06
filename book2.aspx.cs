using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class book2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");

        public void GenerateAutoID()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(id) from Booking", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            i++;
            TextBox3.Text = i.ToString();

        }
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label14.Visible = false;
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Event", con);
                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                    string value = rd["name"].ToString();
                    string text = rd["name"].ToString();

                    ListItem item = new ListItem(text, value);
                    DropDownList1.Items.Add(item);
                }
                rd.Close();
                con.Close();

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from Venue ", con);
                SqlDataReader rd1 = cmd1.ExecuteReader();

                while (rd1.Read())
                {
                    string value = rd1["name"].ToString();
                    string text = rd1["name"].ToString();

                    ListItem item = new ListItem(text, value);
                    DropDownList2.Items.Add(item);
                }
                rd1.Close();
                con.Close();
                con.Open();
                SqlCommand cmd2 = new SqlCommand("select * from Decoration ", con);
                SqlDataReader rd2 = cmd2.ExecuteReader();
                while (rd2.Read())
                {
                    string value = rd2["decoration_type"].ToString();
                    string text = rd2["decoration_type"].ToString();

                    ListItem item = new ListItem(text, value);
                    DropDownList3.Items.Add(item);
                }
                rd2.Close();
                con.Close();
                con.Open();
                SqlCommand cmd3 = new SqlCommand("select food_type from Food ", con);
                SqlDataReader rd3 = cmd3.ExecuteReader();
                while (rd3.Read())
                {
                    string value = rd3["food_type"].ToString();
                    string text = rd3["food_type"].ToString();

                    ListItem item = new ListItem(text, value);
                    DropDownList4.Items.Add(item);
                }
                rd3.Close();
                con.Close();
            }
            Panel3.Visible = false;
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Venue where name=@name ", con);
            cmd.Parameters.AddWithValue("@name", DropDownList2.Text);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string capacity = dr["capacity"].ToString();
                string cost = dr["cost"].ToString();
                string image = dr["image"].ToString();
                TextBox2.Text = capacity;
                TextBox4.Text = cost;
                Image1.ImageUrl = image;
            }
            dr.Close();
            con.Close();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Event where name=@name ", con);
            cmd.Parameters.AddWithValue("@name", DropDownList1.Text);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string image = dr["image"].ToString();
                Image2.ImageUrl = image;
            }
            dr.Close();
            con.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Decoration where decoration_type=@decoration ", con);
            cmd.Parameters.AddWithValue("@decoration", DropDownList3.Text);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string cost = dr["cost"].ToString();
                string image = dr["image"].ToString();
                TextBox5.Text = cost;
                Image4.ImageUrl = image;
            }
            dr.Close();
            con.Close();
        }
        private decimal CalculateAmount(string food, string subtype)
        {
            decimal amount = 0;
            int person = Convert.ToInt32(TextBox6.Text);
            if (food == "Veg" && subtype == "normal")
            {
                amount = 150;
                Label12.Text = (amount * person).ToString();
            }
            else if (food == "Veg" && subtype == "standard")
            {
                amount = 200;
                Label12.Text = (amount * person).ToString();

            }
            else if (food == "Veg" && subtype == "Royal")
            {
                amount = 250;
                Label12.Text = (amount * person).ToString();
            }
            else if (food == "Veg & NonVeg" && subtype == "normal")
            {
                amount = 180;
                Label12.Text = (amount * person).ToString();
            }
            else if (food == "Veg & NonVeg" && subtype == "standard")
            {
                amount = 230;
                Label12.Text = (amount * person).ToString();
            }
            else if (food == "Veg & NonVeg" && subtype == "Royal")
            {
                amount = 280;
                Label12.Text = (amount * person).ToString();
            }
            return amount;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            int a = Convert.ToInt32(TextBox6.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            if (a <= b)
            {
                Panel3.Visible = true;
                string food = DropDownList4.SelectedValue;
                string subtype = RadioButtonList1.SelectedValue;

                decimal amount = CalculateAmount(food, subtype);

                Label11.Text = "Amount: " + amount.ToString();
            }
            else
            {
                Label14.Visible = true;
                Label14.Text = "can not be excess";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Label12.Visible = true;
            decimal totalamt = 0;
            decimal VenueCost = decimal.Parse(TextBox4.Text);
            decimal DecorationCost = decimal.Parse(TextBox5.Text);
            decimal FoodCost = decimal.Parse(Label12.Text);
            totalamt = VenueCost + DecorationCost + FoodCost;
            TextBox7.Visible = true;
            TextBox7.Text = totalamt.ToString();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            DropDownList2.Text = "";
            DropDownList1.Text = "";
            DropDownList3.Text = "";
            DropDownList4.Text = "";
        }
        public static bool IsDateAvailable(DateTime Date, string Venue)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHARATH NAIK\source\repos\Eve_managent\App_Data\Event.mdf"";Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Booking where date=@date and Venue=@venue", con);

            cmd.Parameters.AddWithValue("@date", Date);
            cmd.Parameters.AddWithValue("@venue", Venue);
            int count = (int)cmd.ExecuteScalar();
            return count == 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            DateTime sday = today.AddDays(7);
            DateTime date1 = DateTime.Parse(TextBox1.Text);
            if (date1 < sday && date1 >= today)
            {
                Response.Write("<script> alert('You can only select event date after  7 days');</script>");

            }
            else if (date1 < today)
            {
                Response.Write("<script> alert('invalid Date');</script>");
            }
            else
            {
                DateTime date = DateTime.Parse(TextBox1.Text);
                string venue = DropDownList2.Text;
                if (!IsDateAvailable(date, venue))
                {
                    Response.Write("<script> alert('date is already booked on this hall: can you please select another hall');</script>");

                }
                else
                {
                    Response.Write("<script> alert('date is Available');</script>");
                    Panel3.Visible = true;
                }
            }
        }


            protected void Button5_Click(object sender, EventArgs e)
            {
                Panel2.Visible = true;
            }
            protected void Button2_Click(object sender, EventArgs e)
            {
                Session["id"] = TextBox3.Text;
                Session["Event"] = DropDownList1.Text;
                Session["amount"] = TextBox6.Text;
                Panel3.Visible = true;
            string c = "booked";
                SqlCommand cmd = new SqlCommand("insert into Booking values(@id,@email,@Event,@Venue,@date,@decoration,@Food,@amount,@Status)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@id", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Event", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Venue", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@date", TextBox1.Text);
                cmd.Parameters.AddWithValue("@decoration", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@Food", DropDownList4.Text);
                cmd.Parameters.AddWithValue("@amount", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Status", c);
                cmd.ExecuteNonQuery();
                Response.Redirect("Pymt.aspx");
                Response.Write("Event book successfully");

                con.Close();

            }
        }
    }