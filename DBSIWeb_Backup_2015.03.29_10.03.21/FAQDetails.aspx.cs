using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DBSIWeb
{
    public partial class FAQDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    GetFQA(Convert.ToInt32(Request.QueryString["FAQID"].ToString()));
                }
                catch (Exception ex)
                {
                    lblSection.Text = ex.Message;
                }
            }
        }

        protected void GetFQA(int iFAQID)
        {
            try
            {
                //Create connection to database and open
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbDBSIWeb"].ConnectionString;
                conn.Open();

                //Create sql command to run stored procedure
                SqlCommand cmd = new SqlCommand("sp_FAQ_Display", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Sec", 3));
                cmd.Parameters.Add(new SqlParameter("@FAQID", iFAQID));

                //execute stroed procedure
                SqlDataReader Reader = cmd.ExecuteReader();
                while (Reader.Read())
                {
                    lblSection.Text = Reader["fSection"].ToString();
                    lblQuestion.Text = "Question #" + Reader["FAQOrd"].ToString() + ": " + Reader["Question"].ToString();
                    lblAnswer.Text = Reader["Answer"].ToString();
                }

                //close connectiont to database
                conn.Close();
            }
            catch (Exception ex)
            {
                lblSection.Text = ex.Message;
            }
        }
    }
}