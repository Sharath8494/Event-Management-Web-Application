using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eve_managent
{
    public partial class Custemer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditPro.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("book2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerView.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("cust_feed.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.html");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Event_view.aspx");
        }
    }
}