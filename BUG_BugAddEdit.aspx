<%@ Page Title="" Language="C#" MasterPageFile="~/Default/AdminPanelMaster.master" AutoEventWireup="true" CodeFile="BUG_BugAddEdit.aspx.cs" Inherits="AdminPanel_Bug_BUG_Bug_BUG_BugAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageHeader" Runat="Server">
    <asp:Label ID="lblPageHeader_XXXXX" Text="Bug " runat="server"></asp:Label><small><asp:Label ID="lblPageHeaderInfo_XXXXX" Text="Bug" runat="server"></asp:Label></small>
	<span class="pull-right">
		<small>
			<asp:HyperLink ID="hlShowHelp" SkinID="hlShowHelp" runat="server"></asp:HyperLink>
		</small>
	</span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" Runat="Server">
    <li>
		<i class="fa fa-home"></i>
		<asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/AdminPanel/Default.aspx" Text="Home"></asp:HyperLink>
		<i class="fa fa-angle-right"></i>
	</li>
	<li>
		<asp:HyperLink ID="hlBug" runat="server" NavigateUrl="~/AdminPanel/Bug/BUG_Bug/BUG_BugList.aspx" Text="Bug List"></asp:HyperLink>
		<i class="fa fa-angle-right"></i>
	</li>
	<li class="active">
		<asp:Label ID="lblBreadCrumbLast" runat="server" Text="Bug Add/Edit"></asp:Label>
	</li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPageContent" Runat="Server">
    <!--Help Text-->
		<ucHelp:ShowHelp ID="ucHelp" runat="server" />
		<!--Help Text End-->
		<asp:ScriptManager ID="sm" runat="server">
		</asp:ScriptManager>
		<asp:UpdatePanel ID="upBUG_Bug" runat="server" EnableViewState="true" UpdateMode="Conditional" ChildrenAsTriggers="false">
			<Triggers>
				<asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
			</Triggers>
			<ContentTemplate>
				<div class="row">
					<div class="col-md-12">
						<ucMessage:ShowMessage ID="ucMessage" runat="server" />
						<asp:ValidationSummary ID="ValidationSummary1" SkinID="VS" runat="server" />
					</div>
				</div>

				<div class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<asp:Label SkinID="lblFormHeaderIcon" ID="lblFormHeaderIcon" runat="server"></asp:Label>
							<span class="caption-subject font-green-sharp bold uppercase">
								<asp:Label ID="lblFormHeader" runat="server" Text=""></asp:Label>
							</span>
						</div>
					</div>

					<div class="portlet-body form">
						<div class="horizontal-form" role="form">
							<div class="form-body">
								<div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <lable class="font-lg bold font-red-sunglo">Bug Information</lable>
                                            <hr/>                       
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="col-md-12 control-label">
	                                                    <span class="required">*</span>
		                                                <asp:Label ID="lblRequestByUserID_XXXXX" runat="server" Text="Request By User"></asp:Label>
	                                                </label>
                                                    <div class="col-md-12">
        	                                            <asp:DropDownList ID="ddlRequestByUserID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
			                                            <asp:RequiredFieldValidator ID="rfvRequestByUserID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlRequestByUserID" ErrorMessage="Select Request By User" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                  <div class="form-group">
                                                        <label class="col-md-12 control-label">
	                                                        <span class="required">*</span>
		                                                    <asp:Label ID="lblApplicationID_XXXXX" runat="server" Text="Application"></asp:Label>
	                                                    </label>
                                                     <div class="col-md-12">
        	                                                <asp:DropDownList ID="ddlApplicationID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
			                                                <asp:RequiredFieldValidator ID="rfvApplicationID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlApplicationID" ErrorMessage="Select Application" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                </div>
                                                 </div>
                                              </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">
	                                                     <span class="required">*</span>
	                                    	               <asp:Label ID="lblFeatureID_XXXXX" runat="server" Text="Feature"></asp:Label>
                                	                </label>
                                                    <div class="col-md-12">
                                    	                   <asp:DropDownList ID="ddlFeatureID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
			                                               <asp:RequiredFieldValidator ID="rfvFeatureID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlFeatureID" ErrorMessage="Select Feature" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                </div>
                                               </div>
                                           </div>
                                        </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                     <label class="col-md-12 control-label">
	                                                  <span class="required">*</span>
	                                    	           <asp:Label ID="lblBugDate_XXXXX" runat="server" Text="Bug Date"></asp:Label>
                                	                 </label>
                                                 <div class="col-md-12">
		                                             <div class="input-group  date date-picker" data-date-format='<%=DBugReporting.CV.DefaultHTMLDateFormat.ToString()%>'>
		                            	                 <asp:TextBox ID="dtpBugDate" CssClass="form-control" runat="server" placeholder="Bug Date"></asp:TextBox>
                                                             <span class="input-group-btn">
                                                                <button class="btn default" type="button"><i class="fa fa-calendar"></i></button>
                                                             </span>
                                                       </div>
			                                                <asp:RequiredFieldValidator ID="rfvBugDate" runat="server" ControlToValidate="dtpBugDate" ErrorMessage="Enter Bug Date" Display="Dynamic" Type="Date"></asp:RequiredFieldValidator>
	                                                 </div>
                                                </div>
                                             </div>
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                        <label class="col-md-4 control-label">
	                                                          <span class="required">*</span>
		                                                      <asp:Label ID="lblBugTypeID_XXXXX" runat="server" Text="Bug Type"></asp:Label>
                            	                        </label>
                                                     <div class="col-md-12">
        	                                                  <asp:DropDownList ID="ddlBugTypeID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
			                                                  <asp:RequiredFieldValidator ID="rfvBugTypeID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlBugTypeID" ErrorMessage="Select Bug Type" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                </div>
                                                </div>
                                            </div>
                                             <div class="col-md-4">
                                                    <label class="col-md-12 control-label">
		                                             <asp:Label ID="lblIsFrequent_XXXXX" runat="server" Text=" "></asp:Label>
	                                                </label>
	                                            <div class="col-md-12">
		                                             <div class="input-group">
		                        	                     <div class="icheck-inline">
			                	                          <label>
				                                             <asp:CheckBox ID="cbIsFrequent" runat="server" Text="Is Frequent" /></label>
			                                              </div>
		                                             </div>
                                                 </div>
	                                         </div>
                                        </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="col-md-12 control-label">
	                                                         <span class="required">*</span>
	                                	                        <asp:Label ID="lblBugPriorityID_XXXXX" runat="server" Text="Bug Priority"></asp:Label>
	                                                    </label>
                                                      <div class="col-md-12">
        	                                             <asp:DropDownList ID="ddlBugPriorityID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
			                                             <asp:RequiredFieldValidator ID="rfvBugPriorityID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlBugPriorityID" ErrorMessage="Select Bug Priority" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                  </div>
                                                   </div>
                                             </div>
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                      <label class="col-md-12 control-label">
	                                                  <span class="required">*</span>
		                                                  <asp:Label ID="lblBugStatusID_XXXXX" runat="server" Text="Bug Status"></asp:Label>
	                                                  </label>
                                                     <div class="col-md-12">
                                	                      <asp:DropDownList ID="ddlBugStatusID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
		                        	                      <asp:RequiredFieldValidator ID="rfvBugStatusID" SetFocusOnError="True" runat="server" Display="Dynamic" ControlToValidate="ddlBugStatusID" ErrorMessage="Select Bug Status" InitialValue = "-99"></asp:RequiredFieldValidator>
	                                                 </div>
                                                 </div>
                                             </div>
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                     <label class="col-md-12 control-label">
		                                                 <asp:Label ID="lblBugStatusDate_XXXXX" runat="server" Text="Bug Status Date"></asp:Label>
	                                                 </label>
	                                              <div class="col-md-12">
		                                             <div class="input-group  date date-picker" data-date-format='<%=DBugReporting.CV.DefaultHTMLDateFormat.ToString()%>'>
		                        	                    <asp:TextBox ID="dtpBugStatusDate" CssClass="form-control" runat="server" placeholder="Bug Status Date"></asp:TextBox>
                                                             <span class="input-group-btn">
                                                                  <button class="btn default" type="button"><i class="fa fa-calendar"></i></button>
                                                             </span>
                                                     </div>
                                                  </div>
                                                 </div>
                                             </div>
                                         </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                      <label class="col-md-12 control-label">
		                                                 <asp:Label ID="lblApprovalByUserID_XXXXX" runat="server" Text="Approval By User"></asp:Label>
	                                                  </label>
                                                   <div class="col-md-12">
        	                                            <asp:DropDownList ID="ddlApprovalByUserID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
	                                              </div>
                                                </div>
                                            </div>
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                     <label class="col-md-12 control-label">
		                                               <asp:Label ID="lblApprovalStatusDateTime_XXXXX" runat="server" Text="Approval Status Date Time"></asp:Label>
	                                                 </label>
	                                               <div class="col-md-12">
		                                              <div class="input-group date date-picker" data-date-format='<%=DBugReporting.CV.DefaultHTMLDateFormat.ToString()%>'>
		                    	                         <asp:TextBox ID="dtpApprovalStatusDateTime" CssClass="form-control" runat="server" placeholder="Approval Status Date Time"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                              <button class="btn default" type="button"><i class="fa fa-calendar"></i></button>
                                                            </span>
                                                      </div>
	                                               </div>
                                                </div>
                                     </div>
                                             <div class="col-md-4">
                                                  <div class="form-group">
                                                       <label class="col-md-12 control-label">
		                                                  <asp:Label ID="lblApprovalStatus_XXXXX" runat="server" Text="Approval Status"></asp:Label>
	                                                   </label>
	                                                 <div class="col-md-12">
	                        	                         <asp:TextBox ID="txtApprovalStatus" CssClass="form-control" runat="server"  MaxLength="50" PlaceHolder="Enter Approval Status"></asp:TextBox>
	                                                 </div>
                                                 </div>
                                             </div>
                                        </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                        <label class="col-md-12 control-label">
		                                                     <asp:Label ID="lblApprovalStatusRemarks_XXXXX" runat="server" Text="Approval Status Remarks"></asp:Label>
	                                                    </label>
	                                                    <div class="col-md-12">
		                                                 <asp:TextBox ID="txtApprovalStatusRemarks" CssClass="form-control" runat="server" TextMode = "MultiLine" PlaceHolder="Enter Approval Status Remarks"></asp:TextBox>
	                                                   </div>
                                                 </div>
                                             </div>
                                             <div class="col-md-4">
                                                  <div class="form-group">
                                                      <label class="col-md-4 control-label">
	                                                     <span class="required">*</span>
		                                                    <asp:Label ID="lblTitle_XXXXX" runat="server" Text="Title"></asp:Label>
	                                                  </label>
	                                                <div class="col-md-12">
	                                	                    <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server" TextMode = "MultiLine" PlaceHolder="Enter Title"></asp:TextBox>
		                               	                    <asp:RequiredFieldValidator ID="rfvTitle" SetFocusOnError="True" Display="Dynamic" runat="server" ControlToValidate="txtTitle" ErrorMessage="Enter Title"></asp:RequiredFieldValidator>
	                                                </div>
                                                  </div>
                                             </div>
                                             <div class="col-md-4">
                                                  <div class="form-group">
                                                         <label class="col-md-12 control-label">
		                                                 <asp:Label ID="lblDescription_XXXXX" runat="server" Text="Description"></asp:Label>
	                                                    </label>
	                                                  <div class="col-md-12">
	                            	                      <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server"   PlaceHolder="Enter Description"></asp:TextBox>
	                                                  </div>
                                                    </div>
                                               </div>
                                         </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                        <label class="col-md-12 control-label">
		                                                 <asp:Label ID="lblCurrentOwnerUserID_XXXXX" runat="server" Text="Current Owner User"></asp:Label>
	                                                 </label>
                                                    <div class="col-md-12">
        	                                           <asp:DropDownList ID="ddlCurrentOwnerUserID" CssClass="form-control select2me" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
	                                                </div>
                                                 </div>
                                             </div>  
                                             <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="col-md-12 control-label">
		                                              <asp:Label ID="lblAttachment1_XXXXX" runat="server" Text="Attachment1"></asp:Label>
	                                                </label>
	                                              <div class="col-md-12">
		                                              <asp:TextBox ID="txtAttachment1" CssClass="form-control" runat="server"   PlaceHolder="Enter Attachment1"></asp:TextBox>
	                                              </div>
                                              </div>
                                             </div>
                                             <div class="col-md-4">
                                                    <div class="form-group">
                                                          <label class="col-md-12 control-label">
		                                                      <asp:Label ID="lblAttachment2_XXXXX" runat="server" Text="Attachment2"></asp:Label>
	                                                      </label>
	                                                    <div class="col-md-12">
		                                                         <asp:TextBox ID="txtAttachment2" CssClass="form-control" runat="server"   PlaceHolder="Enter Attachment2"></asp:TextBox>
	                                                    </div>
                                                    </div>
                                              </div>
                                         </div>
                                        <div class="row margin-top-10">
                                             <div class="col-md-4">
                                                 <div class="form-group">
                                                     <label class="col-md-12 control-label">
		                                                <asp:Label ID="lblAttachment3_XXXXX" runat="server" Text="Attachment3"></asp:Label>
	                                                 </label>
	                                               <div class="col-md-12">
	                                	                <asp:TextBox ID="txtAttachment3" CssClass="form-control" runat="server"   PlaceHolder="Enter Attachment3"></asp:TextBox>
	                                               </div>
                                                 </div>
                                            </div>
                                             <div class="col-md-8">
                                                <div class="form-group">
                                                     <label class="col-md-12 control-label">
	                                                    <span class="required">*</span>
		                                                <asp:Label ID="lblSummary_XXXXX" runat="server" Text="Summary"></asp:Label>
	                                                 </label>
	                                              <div class="col-md-12">
		                                             <asp:TextBox ID="txtSummary" CssClass="form-control" runat="server" TextMode = "MultiLine" PlaceHolder="Enter Summary"></asp:TextBox>
			                                         <asp:RequiredFieldValidator ID="rfvSummary" SetFocusOnError="True" Display="Dynamic" runat="server" ControlToValidate="txtSummary" ErrorMessage="Enter Summary"></asp:RequiredFieldValidator>
	                                              </div>
                                               </div>
                                           </div>
                                         </div>
                                    </div>                                   
                                       <br/>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
							<div class="form-actions">
								<div class="row">
									<div class="col-md-offset-3 col-md-9">
										<asp:Button ID="btnSave" runat="server" SkinID="btnSave" OnClick="btnSave_Click" />
										<asp:HyperLink ID="hlCancel" runat="server" SkinID="hlCancel" NavigateUrl="~/AdminPanel/Bug/BUG_Bug/BUG_BugList.aspx"></asp:HyperLink>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</ContentTemplate>
		</asp:UpdatePanel>
		<%-- Loading  --%>
		
	<%-- END Loading  --%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphScripts" Runat="Server">
</asp:Content>

