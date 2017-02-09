using DBugReporting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Bug_BUG_Bug_BUG_BugView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillControls();
        }
    }
    #region FillControls
    private void FillControls()
    {
        try
        {
            if (Request.QueryString["BugID"] != null)
            {

                #region Prepare and Execute Command

                SqlCommand objCmd = new SqlCommand();
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.CommandText = "PR_BUG_Bug_SelectView";
                objCmd.Parameters.Add("@BugID", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["BugID"].ToString().Trim());
                DataTable dtBUG_Bug = DataBaseHelper.LoadDataTable(objCmd);

                #endregion Prepare and Execute Command

                #region Load Controls

                if (dtBUG_Bug != null && dtBUG_Bug.Rows.Count > 0)
                {
                    foreach (DataRow drBUG_Bug in dtBUG_Bug.Rows)
                    {
                        if (!drBUG_Bug["RequestByUserID"].Equals(DBNull.Value))
                        {
                            lblRequestByUserID.Text = drBUG_Bug["FacultyName"].ToString();
                        }
                        if (!drBUG_Bug["CurrentOwnerUserID"].Equals(DBNull.Value))
                        {
                            lblCurrentOwnerUserID.Text = drBUG_Bug["CurrentOwnerUserID"].ToString();
                        }
                        if (!drBUG_Bug["BugDate"].Equals(DBNull.Value))
                        {
                            lblBugDate.Text = drBUG_Bug["BugDate"].ToString();
                        }
                        if (!drBUG_Bug["ApplicationID"].Equals(DBNull.Value))
                        {
                            lblApplicationID.Text = drBUG_Bug["ApplicationID"].ToString();
                        }
                        if (!drBUG_Bug["FeatureID"].Equals(DBNull.Value))
                        {
                            lblFeatureID.Text = drBUG_Bug["FeatureID"].ToString();
                        }
                        if (!drBUG_Bug["BugTypeID"].Equals(DBNull.Value))
                        {
                            lblBugTypeID.Text = drBUG_Bug["BugTypeID"].ToString();
                        }
                        if (!drBUG_Bug["BugPriorityID"].Equals(DBNull.Value))
                        {
                            lblBugPriorityID.Text = drBUG_Bug["BugPriorityID"].ToString();
                        }
                        if (!drBUG_Bug["IsFrequent"].Equals(DBNull.Value))
                        {
                            lblIsFrequent.Text = drBUG_Bug["IsFrequent"].ToString();
                        }
                        if (!drBUG_Bug["Title"].Equals(DBNull.Value))
                        {
                            lblTitle.Text = drBUG_Bug["Title"].ToString();
                        }
                        if (!drBUG_Bug["Summary"].Equals(DBNull.Value))
                        {
                            lblSummary.Text = drBUG_Bug["Summary"].ToString();
                        }
                        if (!drBUG_Bug["Description"].Equals(DBNull.Value))
                        {
                            lblDescription.Text = drBUG_Bug["Description"].ToString();
                        }
                        if (!drBUG_Bug["ApprovalStatus"].Equals(DBNull.Value))
                        {
                            lblApprovalStatus.Text = drBUG_Bug["ApprovalStatus"].ToString();
                        }
                        if (!drBUG_Bug["Created"].Equals(DBNull.Value))
                        {
                            lblCreated.Text = drBUG_Bug["Created"].ToString();
                        }
                        if (!drBUG_Bug["Modified"].Equals(DBNull.Value))
                        {
                            lblModified.Text = drBUG_Bug["Modified"].ToString();
                        }
                        break;
                    }
                }
                #endregion Load Controls

            }
            else
            {
                Response.Redirect("~/AdminPanel/Bug/BUG_Bug/BUG_BugList.aspx");
            }
        }
        catch (Exception ex)
        {
            
        }
    }

    #endregion FillControls
}