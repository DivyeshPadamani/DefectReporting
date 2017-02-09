using DBugReporting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region Login Button Click Event

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlCommand objCmd = new SqlCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_SEC_User_SelectByUsernamePassword";

        objCmd.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
        objCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
       

        DataTable dtSEC_User = DataBaseHelper.LoadDataTable(objCmd);

        if (dtSEC_User != null && dtSEC_User.Rows.Count > 0)
        {
            foreach (DataRow drSEC_User in dtSEC_User.Rows)
            {
                if (!drSEC_User["UserID"].Equals(DBNull.Value))
                    Session["UserID"] = drSEC_User["UserID"].ToString().Trim();

                if (!drSEC_User["UserName"].Equals(DBNull.Value))
                    Session["UserName"] = drSEC_User["UserName"].ToString().Trim();

                break;
            }
            Response.Redirect("~/AdminPanel/Default.aspx");
        }
        else
        {
            ucMessage.ShowError("Either UserName And Password is not vaild");
        }

    }
    #endregion Login Button Click Event
}