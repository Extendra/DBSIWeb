using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBSIWeb
{
    public partial class PrivacyStatement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("closeWindow", "<script type='text/javascript'>CloseOnReload()</script>");
        }


    }
}