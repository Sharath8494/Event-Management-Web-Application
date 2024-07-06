using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Event.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_venue.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("manage_food.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("manage_decoration.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Status.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewfeed.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.html");
        }

        

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profit.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("report1.aspx");
        }
    }
}