using DBugReporting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient; 
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Bug_BUG_Bug_BUG_BugList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            FillGridView();
        }
    }

    #region FillGridView

    private void FillGridView()
    {
        try
        {
            SqlCommand objCmd = new SqlCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_BUG_Bug_SelectAll";

            DataTable dtBugList = DataBaseHelper.LoadDataTable(objCmd);

            gvBUG_BugList.DataSource = dtBugList;
            gvBUG_BugList.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    #endregion FillGridView

    #region GridView : RowCommand

    protected void gvBUG_BugList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "DeleteRecord")
            {
                SqlCommand objCmd = new SqlCommand();
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "PR_BUG_Bug_Delete";

                objCmd.Parameters.AddWithValue("@BugID", e.CommandArgument.ToString().Trim());
                DataBaseHelper.ExecuteNonQuery(objCmd);

                FillGridView();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    #endregion GridView : RowCommand

    protected void gvBUG_BugList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvBUG_BugList.PageIndex = e.NewPageIndex;
        FillGridView();
    }

}