using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBSIWeb
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibtnFAQ_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("faq.aspx");
        }

        protected void ibtnTax_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BGL.aspx");
        }

        protected void ibtnForms_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("forms.aspx");
        }

        protected void ibtnDocs_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Docs.aspx");
        }

        protected void ibtnBackGround_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        
    }
}