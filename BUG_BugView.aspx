<%@ Page Title="" Language="C#" MasterPageFile="~/Default/MasterPageView.master" AutoEventWireup="true" CodeFile="BUG_BugView.aspx.cs" Inherits="AdminPanel_Bug_BUG_Bug_BUG_BugView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageContent" Runat="Server">
    <!-- BEGIN SAMPLE FORM PORTLET-->
	<div class="portlet light">
		<div class="portlet-title">
			<div class="caption">
				<asp:Label SkinID="lblViewFormHeaderIcon" ID="lblViewFormHeaderIcon" runat="server"></asp:Label>
				<span class="caption-subject font-green-sharp bold uppercase">Bug</span>
			</div>
			<div class="tools">
				<asp:HyperLink ID="CloseButton" SkinID="hlClosemymodal" runat="server" ClientIDMode="Static"></asp:HyperLink>
			</div>
		</div>
		<div class="portlet-body form">
		<div class="form-horizontal" role="form">
		<table class="table table-bordered table-advance table-hover">
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblRequestByRequestByUserID_XXXXX" Text="Request By User" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblRequestByUserID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblCurrentOwnerCurrentOwnerUserID_XXXXX" Text="Current Owner User" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblCurrentOwnerUserID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblBugDate_XXXXX" Text="Bug Date" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblBugDate" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblApplicationID_XXXXX" Text="Application" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblApplicationID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblFeatureID_XXXXX" Text="Feature" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblFeatureID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblBugTypeID_XXXXX" Text="Bug Type" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblBugTypeID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblBugPriorityID_XXXXX" Text="Bug Priority" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblBugPriorityID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblIsFrequent_XXXXX" Text="Is Frequent" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblIsFrequent" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblTitle_XXXXX" Text="Title" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblTitle" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblSummary_XXXXX" Text="Summary" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblSummary" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblAttachment1_XXXXX" Text="Attachment1" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblAttachment1" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblAttachment2_XXXXX" Text="Attachment2" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblAttachment2" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblAttachment3_XXXXX" Text="Attachment3" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblAttachment3" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblBugStatusID_XXXXX" Text="Bug Status" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblBugStatusID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblBugStatusDate_XXXXX" Text="Bug Status Date" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblBugStatusDate" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblDescription_XXXXX" Text="Description" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblDescription" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblApprovalStatus_XXXXX" Text="Approval Status" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblApprovalStatus" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblApprovalStatusDateTime_XXXXX" Text="Approval Status Date Time" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblApprovalStatusDateTime" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblApprovalByApprovalByUserID_XXXXX" Text="Approval By User" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblApprovalByUserID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblApprovalStatusRemarks_XXXXX" Text="Approval Status Remarks" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblApprovalStatusRemarks" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblUserID_XXXXX" Text="User" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblUserID" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblCreated_XXXXX" Text="Created" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblCreated" runat="server"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="TDDarkView">
				<asp:Label ID="lblModified_XXXXX" Text="Modified" runat="server"></asp:Label>
				</td>
				<td>
				<asp:Label ID="lblModified" runat="server"></asp:Label>
				</td>
			</tr>
		</table>
	</div>
</div>
</div>
<!-- END SAMPLE FORM PORTLET-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" Runat="Server">
    <script>
        $(document).keyup(function (e) {
            if (e.keyCode == 27) {;
                $("#CloseButton").trigger("click");
            }
        });
</script>
</asp:Content>

