using DBugReporting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Bug_BUG_Bug_BUG_BugAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CommonFillMethods.FillDropDownListUserID(ddlRequestByUserID);
            CommonFillMethods.FillDropDownListUserID(ddlCurrentOwnerUserID);
            CommonFillMethods.FillDropDownListApplicationID(ddlApplicationID);
            CommonFillMethods.FillDropDownListBugID(ddlBugTypeID);
            CommonFillMethods.FillDropDownListBugPriorityID(ddlBugPriorityID);
            CommonFillMethods.FillDropDownListBugStatusID(ddlBugStatusID);
            CommonFillMethods.FillDropDownListFeatureID(ddlFeatureID);
            CommonFillMethods.FillDropDownListUserTypeID(ddlRequestByUserID);
            CommonFillMethods.FillDropDownListUserID(ddlApprovalByUserID);

            FillControls();
           
            
        }
    }

    #region Button : Save
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            #region Local Variables

            SqlInt32 strBugID = SqlInt32.Null;
            SqlInt32 strRequestByUserID = SqlInt32.Null;
            SqlInt32 strCurrentOwnerUserID = SqlInt32.Null;
            SqlDateTime strBugDate = SqlDateTime.Null;
            SqlInt32 strApplicationID = SqlInt32.Null;
            SqlInt32 strFeatureID = SqlInt32.Null;
            SqlInt32 strBugTypeID = SqlInt32.Null;
            SqlInt32 strBugPriorityID = SqlInt32.Null;
            SqlBoolean IsFrequent = SqlBoolean.Null;
            SqlString strTitle = SqlString.Null;
            SqlString strSummary = SqlString.Null;
            SqlString strAttachment1 = SqlString.Null;
            SqlString strAttachment2 = SqlString.Null;
            SqlString strAttachment3 = SqlString.Null;
            SqlInt32 strBugStatusID = SqlInt32.Null;
            SqlDateTime strBugStatusDate = SqlDateTime.Null;
            SqlString strDescription = SqlString.Null;
            SqlString strApprovalStatus = SqlString.Null;
            SqlDateTime strApprovalStatusDateTime = SqlDateTime.Null;
            SqlInt32 strApprovalByUserID = SqlInt32.Null;
            SqlString strApprovalStatusRemarks = SqlString.Null;
            SqlInt32 strUserID = SqlInt32.Null;
            SqlDateTime strCreated = SqlDateTime.Null;
            SqlDateTime strModified = SqlDateTime.Null;

            #endregion Local Variables

            #region Read Values From Control

            if (ddlRequestByUserID.SelectedValue != null)
                strRequestByUserID = Convert.ToInt32(ddlRequestByUserID.SelectedValue);

            strBugDate = DateTime.Now;

            if (ddlCurrentOwnerUserID.SelectedValue != null)
                strCurrentOwnerUserID = Convert.ToInt32(ddlCurrentOwnerUserID.SelectedValue);

            if (ddlApplicationID.SelectedValue != null)
                strApplicationID = Convert.ToInt32(ddlApplicationID.SelectedValue);

            if (ddlFeatureID.SelectedValue != null)
                strFeatureID = Convert.ToInt32(ddlFeatureID.SelectedValue);

            if (ddlBugTypeID.SelectedValue != null)
                strBugTypeID = Convert.ToInt32(ddlBugTypeID.SelectedValue);

            if (ddlApprovalByUserID.SelectedValue != null)
                strApprovalByUserID = Convert.ToInt32(ddlApprovalByUserID.SelectedValue);

            if (ddlBugPriorityID.SelectedValue != null)
                strBugPriorityID = Convert.ToInt32(ddlBugPriorityID.SelectedValue);

                 IsFrequent = cbIsFrequent.Checked;

            if (!txtTitle.Text.Trim().Equals(DBNull.Value))
                strTitle = txtTitle.Text.Trim();

            if (!txtSummary.Text.Trim().Equals(DBNull.Value))
                strSummary= txtSummary.Text.Trim();

            if (!txtAttachment1.Text.Trim().Equals(DBNull.Value))
                strAttachment1 = txtAttachment1.Text.Trim();

            if (!txtAttachment2.Text.Trim().Equals(DBNull.Value))
                strAttachment2 = txtAttachment2.Text.Trim();

            if (!txtAttachment3.Text.Trim().Equals(DBNull.Value))
                strAttachment3 = txtAttachment3.Text.Trim();

            if (ddlBugStatusID.SelectedValue != null)
                strBugStatusID = Convert.ToInt32(ddlBugStatusID.SelectedValue);

            strBugStatusDate = DateTime.Now;

            if (!txtDescription.Text.Trim().Equals(DBNull.Value))
                strDescription = txtDescription.Text.Trim();

            if (!txtApprovalStatus.Text.Trim().Equals(DBNull.Value))
                strApprovalStatus = txtApprovalStatus.Text.Trim();

            strApprovalStatusDateTime = DateTime.Now;

            if (!txtApprovalStatusRemarks.Text.Trim().Equals(DBNull.Value))
                strApprovalStatusRemarks = txtApprovalStatusRemarks.Text.Trim();

            if (Session["UserID"] != null)
                strUserID = Convert.ToInt32(Session["UserID"].ToString().Trim());

            strCreated = DateTime.Now;
            strModified = DateTime.Now;

            #endregion Read Values From Control

            #region Create and Set Commad Object

            SqlCommand objCmd = new SqlCommand();
            objCmd.CommandType = CommandType.StoredProcedure;

            
            objCmd.Parameters.Add("@RequestByUserID", SqlDbType.Int).Value = strRequestByUserID;
            objCmd.Parameters.Add("@BugDate", SqlDbType.DateTime).Value = strBugDate;
            objCmd.Parameters.Add("@CurrentOwnerUserID", SqlDbType.Int).Value = strCurrentOwnerUserID;
            objCmd.Parameters.Add("@ApplicationID", SqlDbType.Int).Value = strApplicationID;
            objCmd.Parameters.Add("@FeatureID", SqlDbType.Int).Value = strFeatureID;
            objCmd.Parameters.Add("@BugTypeID", SqlDbType.Int).Value = strBugTypeID;
            objCmd.Parameters.Add("@BugPriorityID", SqlDbType.Int).Value = strBugPriorityID;
            objCmd.Parameters.Add("@IsFrequent", SqlDbType.Bit).Value = IsFrequent;
            objCmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = strTitle;
            objCmd.Parameters.Add("@Summary", SqlDbType.VarChar).Value = strSummary;
            objCmd.Parameters.Add("@Attachment1", SqlDbType.VarChar).Value = strAttachment1;
            objCmd.Parameters.Add("@Attachment2", SqlDbType.VarChar).Value = strAttachment2;
            objCmd.Parameters.Add("@Attachment3", SqlDbType.VarChar).Value = strAttachment3;
            objCmd.Parameters.Add("@BugStatusID", SqlDbType.Int).Value = strBugStatusID;
            objCmd.Parameters.Add("@BugStatusDate", SqlDbType.DateTime).Value = strBugStatusDate;
            objCmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = strDescription;
            objCmd.Parameters.Add("@ApprovalStatus", SqlDbType.VarChar).Value = strApprovalStatus;
            objCmd.Parameters.Add("@ApprovalStatusDateTime", SqlDbType.DateTime).Value = strApprovalStatusDateTime;
            objCmd.Parameters.Add("@ApprovalByUserID", SqlDbType.Int).Value = strApprovalByUserID;
            objCmd.Parameters.Add("@ApprovalStatusRemarks", SqlDbType.VarChar).Value = strApprovalStatusRemarks;
            objCmd.Parameters.Add("@UserID", SqlDbType.Int).Value = strUserID;
            objCmd.Parameters.Add("@Modified", SqlDbType.DateTime).Value = strModified;

            #endregion Create and Set Commad Object

            #region Execute Command
            if (Request.QueryString["BugID"] == null)
            {
                objCmd.CommandText = "PR_BUG_Bug_Insert";
                objCmd.Parameters.Add("@BugID", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
                objCmd.Parameters.Add("@Created", SqlDbType.DateTime).Value = strCreated;

            }
            else
            {
                objCmd.CommandText = "PR_BUG_Bug_Update";
                objCmd.Parameters.Add("@BugID", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["BugID"].ToString().Trim());
                objCmd.Parameters.Add("@Created", SqlDbType.DateTime).Value = strCreated;
            }

            DataBaseHelper.ExecuteNonQuery(objCmd);
            ClearControls();
            #endregion Execute Command

            if (Request.QueryString["@BugID"] == null)
            {
                ucMessage.ShowSuccess("Data Inserted Successfully");
            }
            else
            {
                Response.Redirect("~/AdminPanel/Bug/BUG_Bug/BUG_BugList.aspx");
            }
        }
        catch (Exception ex)
        {
            ucMessage.ShowSuccess(ex.Message);
        }
    }

    #endregion Button : Save

    #region FillControls
    private void FillControls()
    {
        try
        {
            if (Request.QueryString["BugID"] != null)
            {
                lblFormHeader.Text = "Bug Edit Page";

                #region Prepare and Execute Command

                SqlCommand objCmd = new SqlCommand();
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "PR_BUG_Bug_SelectPK";
                objCmd.Parameters.Add("@BugID", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["BugID"].ToString().Trim());
                DataTable dtBug = DataBaseHelper.LoadDataTable(objCmd);

                #endregion Prepare and Execute Command

                #region Load Controls

                if (dtBug != null && dtBug.Rows.Count > 0)
                {
                    foreach (DataRow drBug in dtBug.Rows)
                    {

                        if (!drBug["RequestByUserID"].Equals(DBNull.Value))
                        {
                            ddlRequestByUserID.SelectedValue = drBug["RequestByUserID"].ToString();
                        }
                        if (!drBug["ApplicationID"].Equals(DBNull.Value))
                        {
                            ddlApplicationID.SelectedValue = drBug["ApplicationID"].ToString();
                        }
                        if (!drBug["CurrentOwnerUserID"].Equals(DBNull.Value))
                        {
                            ddlCurrentOwnerUserID.SelectedValue = drBug["CurrentOwnerUserID"].ToString();
                        }
                        if (!drBug["FeatureID"].Equals(DBNull.Value))
                        {
                            ddlFeatureID.SelectedValue = drBug["FeatureID"].ToString();
                        }
                        //if (!drBug["BugDate"].Equals(DBNull.Value))
                        //{
                        //    dtpBugDate.Text = Convert.ToDateTime(drBug["BugDate"]).ToString();
                        //}
                        if (!drBug["BugTypeID"].Equals(DBNull.Value))
                        {
                            ddlBugTypeID.SelectedValue = drBug["BugTypeID"].ToString();
                        }
                        if (!drBug["BugPriorityID"].Equals(DBNull.Value))
                        {
                            ddlBugPriorityID.SelectedValue = drBug["BugPriorityID"].ToString();
                        }
                        if (!drBug["BugStatusID"].Equals(DBNull.Value))
                        {
                            ddlBugStatusID.SelectedValue = drBug["BugStatusID"].ToString();
                        }
                        if (!drBug["BugStatusDate"].Equals(DBNull.Value))
                        {
                            dtpBugStatusDate.Text = Convert.ToDateTime(drBug["BugStatusDate"]).ToString();
                        }
                        if (!drBug["ApprovalByUserID"].Equals(DBNull.Value))
                        {
                            ddlApprovalByUserID.SelectedValue = drBug["ApprovalByUserID"].ToString();
                        }
                        if (!drBug["ApprovalStatusDateTime"].Equals(DBNull.Value))
                        {
                            dtpApprovalStatusDateTime.Text = Convert.ToDateTime(drBug["ApprovalStatusDateTime"]).ToString();
                        }
                        if (!drBug["ApprovalStatus"].Equals(DBNull.Value))
                        {
                            txtApprovalStatus.Text = Convert.ToDateTime(drBug["ApprovalStatus"]).ToString();
                        }
                        if (!drBug["ApprovalStatusRemarks"].Equals(DBNull.Value))
                        {
                            txtApprovalStatusRemarks.Text = Convert.ToDateTime(drBug["ApprovalStatusRemarks"]).ToString();
                        }
                        if (!drBug["Title"].Equals(DBNull.Value))
                        {
                            txtTitle.Text = Convert.ToDateTime(drBug["Title"]).ToString();
                        }
                        if (!drBug["Description"].Equals(DBNull.Value))
                        {
                            txtDescription.Text = Convert.ToDateTime(drBug["Description"]).ToString();
                        }
                        if (!drBug["Attachment1"].Equals(DBNull.Value))
                        {
                            txtAttachment1.Text = Convert.ToDateTime(drBug["Attachment1"]).ToString();
                        }
                        if (!drBug["Attachment2"].Equals(DBNull.Value))
                        {
                            txtAttachment2.Text = Convert.ToDateTime(drBug["Attachment2"]).ToString();
                        }
                        if (!drBug["Attachment3"].Equals(DBNull.Value))
                        {
                            txtAttachment3.Text = Convert.ToDateTime(drBug["Attachment3"]).ToString();
                        }
                        if (!drBug["Summary"].Equals(DBNull.Value))
                        {
                            txtSummary.Text = Convert.ToDateTime(drBug["Summary"]).ToString();
                        }
                        break;
                    }
                }
                #endregion Load Controls
            }
            else
            {
                lblFormHeader.Text = "Bug Add Page";
            }
        }
        catch (Exception ex)
        {
            ucMessage.ShowError(ex.Message);
        }
    }

    #endregion FillControls

    #region ClearControls
    private void ClearControls()
    {
        ddlRequestByUserID.SelectedValue = String.Empty;
        ddlApplicationID.SelectedValue = String.Empty;
        ddlCurrentOwnerUserID.SelectedValue = String.Empty;
        ddlFeatureID.SelectedValue = String.Empty;
        dtpBugDate.Text = String.Empty;
        ddlBugTypeID.SelectedValue = String.Empty;
        cbIsFrequent.Checked = false;
        ddlBugPriorityID.SelectedValue = String.Empty;
        ddlBugStatusID.SelectedValue = String.Empty;
        dtpBugStatusDate.Text = String.Empty;
        ddlApprovalByUserID.SelectedValue = String.Empty;
        txtApprovalStatus.Text = String.Empty;
        txtApprovalStatusRemarks.Text = String.Empty;
        txtTitle.Text = String.Empty;
        txtDescription.Text = String.Empty;
        ddlCurrentOwnerUserID.SelectedValue = String.Empty;
        txtAttachment1.Text = String.Empty;
        txtAttachment2.Text = String.Empty;
        txtAttachment3.Text = String.Empty;
        txtSummary.Text = String.Empty;
        
    }

    #endregion ClearControls
}