using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int UserId = Convert.ToInt32(Request.QueryString["id"]);
                    SqlConnection sqlCon = new SqlConnection("Integrated Security=yes;database=harshit;data source=DESKTOP-CJCCHMF");
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewByID", sqlCon);
                    sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                    sqlDa.SelectCommand.Parameters.AddWithValue("@UserId", UserId);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);

                    hfUserId.Value = UserId.ToString();
                    TxtFirstName.Text = dtbl.Rows[0][1].ToString();
                    TxtLastName.Text = dtbl.Rows[0][2].ToString();
                    ddlGender.Items.FindByValue(dtbl.Rows[0][3].ToString()).Selected = true;
                    TxtRecentQualification.Text = dtbl.Rows[0][4].ToString();
                    TxtUserName.Text = dtbl.Rows[0][5].ToString();
                    TxtPassword.Text = dtbl.Rows[0][6].ToString();
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (TxtUserName.Text == "" || TxtPassword.Text == "")
                LblErrorMassage.Text = "Please Fill Mandatory Fields";
            else
            {

            SqlConnection sqlCon = new SqlConnection("Integrated Security=yes;database=harshit;data source=DESKTOP-CJCCHMF");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(hfUserId.Value == "" ? "0" : hfUserId.Value));
            sqlCmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@LastName", TxtLastName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
            sqlCmd.Parameters.AddWithValue("@Contact", TxtContact.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@RecentQualification", TxtRecentQualification.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@UserName", TxtUserName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", TxtPassword.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            Clear();
            LblSuccesMassage.Text = "Registered Successfully";
                Response.Redirect("Login.aspx");
            }
        }

        void Clear()
        {
            TxtFirstName.Text = TxtLastName.Text = TxtRecentQualification.Text = TxtUserName.Text = TxtPassword.Text = "";
            hfUserId.Value = "";
            LblSuccesMassage.Text = LblErrorMassage.Text = "";

        }


    }
}