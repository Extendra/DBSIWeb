using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBSIWeb
{
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string LableValue(RepeaterItem itm, string controlId)
        {
            string text = null;
            Label label = itm.FindControl(controlId) as Label;
            if (label != null)
            {
                text = label.Text;
            }
            return text;
        }

        protected void rptSec_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string str;
            Repeater repeater;
            Label label;
            Panel panel;
            LinkButton button;
            LinkButton button2;
            if (e.CommandName == "Exp")
            {
                str = this.LableValue(e.Item, "lblID");
                foreach (RepeaterItem item in this.rptSection.Items)
                {
                    repeater = (Repeater)item.FindControl("rptQuest");
                    foreach (RepeaterItem item2 in repeater.Items)
                    {
                        label = (Label)item2.FindControl("lblID");
                        panel = (Panel)item2.FindControl("pnl1");
                        button = (LinkButton)item2.FindControl("lbtnExpand");
                        button2 = (LinkButton)item2.FindControl("lbtnCol");
                        if (str == label.Text)
                        {
                            button.Visible = false;
                            button2.Visible = true;
                            panel.Visible = true;
                        }
                    }
                }
            }
            if (e.CommandName == "Col")
            {
                str = this.LableValue(e.Item, "lblID");
                foreach (RepeaterItem item in this.rptSection.Items)
                {
                    repeater = (Repeater)item.FindControl("rptQuest");
                    foreach (RepeaterItem item2 in repeater.Items)
                    {
                        label = (Label)item2.FindControl("lblID");
                        panel = (Panel)item2.FindControl("pnl1");
                        button = (LinkButton)item2.FindControl("lbtnExpand");
                        button2 = (LinkButton)item2.FindControl("lbtnCol");
                        if (str == label.Text)
                        {
                            button.Visible = true;
                            button2.Visible = false;
                            panel.Visible = false;
                        }
                    }
                }
            }
        }

        protected void ddFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtFilter.Text = ddFilter.SelectedValue.ToString();
        }
    }
}