using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBSIWeb.M1
{
    public partial class M1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void lbtnFAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQ.aspx");
        }

        protected void lbtnTax_Click(object sender, EventArgs e)
        {
            Response.Redirect("BGL.aspx");
        }

        protected void lbtnForms_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forms.aspx");
        }

        protected void lbtnDocs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Docs.aspx");
        }

        protected void lbtnBackground_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}