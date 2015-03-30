using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebUpdates
{
    public partial class FAQUpdateData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    GetData(Convert.ToInt32(Request.QueryString["ID"].ToString()));
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void GetData(int iID)
        {
            int iC = 0;

            try
            {
                //Create connection to database and open
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBSI_DB"].ConnectionString;
                conn.Open();

                //Create sql command to run stored procedure
                SqlCommand cmd = new SqlCommand("sp_FAQ_Display", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Sec", 3));
                cmd.Parameters.Add(new SqlParameter("@FAQID", iID));

                //execute stroed procedure
                SqlDataReader Reader = cmd.ExecuteReader();
                while (Reader.Read())
                {
                    txtQ.Content = Reader["Question"].ToString();
                    txtA.Content = Reader["Answer"].ToString();
                    iC = Convert.ToInt32(Reader["iUpdated"].ToString());
                }

                //close connectiont to database
                conn.Close();

                if (iC == 0) { ch1.Checked = false; }
                if (iC == 1) { ch1.Checked = true; }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int iC = 0;
            if (ch1.Checked) { iC = 1; }

            try
            {
                //Create connection to database and open
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBSI_DB"].ConnectionString;
                conn.Open();

                //Create sql command to run stored procedure
                SqlCommand cmd = new SqlCommand("spFAQUpdate", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@FAQID", Convert.ToInt32(Request.QueryString["ID"].ToString())));
                cmd.Parameters.Add(new SqlParameter("@Q", txtQ.Content));
                cmd.Parameters.Add(new SqlParameter("@A", txtA.Content));
                cmd.Parameters.Add(new SqlParameter("@iU", iC));

                //execute stroed procedure
                SqlDataReader Reader = cmd.ExecuteReader();

                //close connectiont to database
                conn.Close();

                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            Response.Redirect("FAQUpdate.aspx");
        }
    }
}