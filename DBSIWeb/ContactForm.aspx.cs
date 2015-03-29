using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace DBSIWeb
{
    public partial class ContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFirstName.Focus();
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("closeWindow", "<script type='text/javascript'>CloseOnReload()</script>");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["dbDBSIWeb"].ConnectionString
            };
            connection.Open();
            SqlCommand command = new SqlCommand("sp_Contacts_Insert", connection)
            {
                CommandType = CommandType.StoredProcedure
            };
            command.Parameters.Add(new SqlParameter("@FirstName", this.txtFirstName.Text.Replace("'", "")));
            command.Parameters.Add(new SqlParameter("@LastName", this.txtLastName.Text.Replace("'", "")));
            command.Parameters.Add(new SqlParameter("@ClaimNo", this.txtClaimNumber.Text));
            command.Parameters.Add(new SqlParameter("@EmailAddress", this.txtEmail.Text.Replace("'", "")));
            command.Parameters.Add(new SqlParameter("@PhoneNumber", this.txtPhoneNumber.Text));
            command.Parameters.Add(new SqlParameter("@Request", this.txtRequest.Content.Replace("'", "").ToString()));
            command.Parameters.Add(new SqlParameter("@ClaimantType", this.cbClaimantType.SelectedValue.ToString()));
            command.Parameters.Add(new SqlParameter("@InvestmentType", this.cbInvestmentType.SelectedValue.ToString()));
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                this.lblContactID.Text = reader["ContactID"].ToString();
                this.lblFullName.Text = reader["FullName"].ToString();
                this.lblClaimNo.Text = reader["ClaimNo"].ToString();
                this.lblEmailAddress.Text = reader["EmailAddress"].ToString();
                this.lblPhoneNumber.Text = reader["PhoneNumber"].ToString();
                this.lblRequest.Text = reader["Request"].ToString();
                this.lblClaimantType.Text = reader["ClaimantType"].ToString();
                this.lblInvestmentType.Text = reader["InvestmentType"].ToString();
                this.lblCreatedDate.Text = string.Format("{0:d}", reader["CreatedDate"]);
            }
            connection.Close();
            if (this.lblContactID.Text != null)
            {
                this.SendEmail();
            }
            this.Page.RegisterStartupScript("closeWindow", "<script type='text/javascript'>CloseOnReload()</script>");
        }

        protected void SendEmail()
        {
            string address = ConfigurationSettings.AppSettings["EmailSender"].ToString();
            string str2 = ConfigurationSettings.AppSettings["EmailCC"].ToString();
            SmtpClient client = new SmtpClient
            {
                Host = ConfigurationSettings.AppSettings["smtpServer"]
            };
            MailMessage message = new MailMessage
            {
                From = new MailAddress(address)
            };
            message.To.Add(new MailAddress(this.txtEmail.Text));
            message.Bcc.Add(new MailAddress(str2));
            message.Subject = "Your online request to the DBSI Liquidating Trusts";
            message.Body = "Thank you for submitting your requests.  Your request number is: " + this.lblContactID.Text + "<br /><br />";
            message.Body = message.Body + "You submitted the following information.<br /><br />";
            message.Body = message.Body + "Name: " + this.lblFullName.Text + "<br />";
            message.Body = message.Body + "Phone Number: " + this.lblPhoneNumber.Text + "<br />";
            message.Body = message.Body + "Claim Number: " + this.lblClaimNo.Text + "<br />";
            message.Body = message.Body + "Claimant Type: " + this.lblClaimantType.Text + "<br />";
            message.Body = message.Body + "Investment: " + this.lblInvestmentType.Text + "<br />";
            message.Body = message.Body + "Request: " + this.lblRequest.Text + "<br /><br />";
            message.Body = message.Body + "The Liquidating trust staff will process your inquiry as soon as possible.  You may also visit the website for more information.<br /><br />";
            message.Body = message.Body + "Site:  http://www.dbsiliquidatingtrusts.com/<br />";
            message.Body = message.Body + "FAQ:  http://www.dbsiliquidatingtrusts.com/FAQ.aspx<br />";
            message.Body = message.Body + "Doc:  http://www.dbsiliquidatingtrusts.com/Docs.aspx<br /><br />";
            message.Body = message.Body + "Regards the DBSI Liquidating Trusts<br />";
            message.Body = message.Body + "Phone:  866-441-3377<br />";
            message.IsBodyHtml = true;
            client.Send(message);
        }

    }
}