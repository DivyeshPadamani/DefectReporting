<%@ Page Title="" Language="C#" MasterPageFile="~/Default/AdminPanelMaster.master" AutoEventWireup="true" CodeFile="BUG_BugList.aspx.cs" Inherits="AdminPanel_Bug_BUG_Bug_BUG_BugList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageHeader" Runat="Server">

     <asp:Label ID="lblPageHeader_XXXXX" runat="server" Text="BugList"></asp:Label>
    <small>
        <asp:Label ID="lblPageHeaderInfo_XXXXX" runat="server" Text="List"></asp:Label></small>
    <span class="pull-right">
        <small>
         
        </small>
    </span>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" Runat="Server">

     <li>
        <i class="fa fa-home"></i>
        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="#" Text="Home"></asp:HyperLink>
        <i class="fa fa-angle-right"></i>
    </li>
    <li class="active">
        <asp:Label ID="lblBreadCrumbLast" runat="server" Text="BugList"></asp:Label>
    </li>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPageContent" Runat="Server">

    <div class="Container">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="registrationform">
            <div class="form-horizontal">

                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>

                <span id="ctl00_cphPageContent_lblMessage"></span>
                    

                       <div class="portlet light">
                      <div class="portlet-title">
                        <div class="caption">
                            <span id="ctl00_cphPageContent_lblFormHeaderIcon">
                            <i class="fa fa-cogs font-green-sharp"></i>
                 </span>
                            <span class="caption-subject font-green-sharp bold uppercase">
                                <span id="ctl00_cphPageContent_lblFormHeader">Bug List Page</span>
                            </span>
                        </div>
                    </div>
                       
                    <br />
                    <div class="form-group">
                        <p>  
                            <asp:HyperLink ID="hlAddNew" NavigateUrl="~/AdminPanel/Bug/BUG_Bug/BUG_BugAddEdit.aspx" runat="server" CssClass="btn green GNAddButton"><i class="fa fa-plus"></i> Add New BugList</asp:HyperLink>

                        </p>
                        <br />
                        <br />
                        <asp:GridView ID="gvBUG_BugList" runat="server" AutoGenerateColumns="False"   OnRowCommand="gvBUG_BugList_RowCommand" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvBUG_BugList_PageIndexChanging" >
                            <Columns>
                                 
                                <%--<asp:BoundField DataField="SubjectID" HeaderText="SubjectID" />--%>
                                
                                 <asp:TemplateField HeaderText="BugName">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlCaseID" NavigateUrl='<%# "~/AdminPanel/Bug/BUG_Bug/BUG_BugView.aspx?BugID=" + DBugReporting.CommonFunctions.EncryptBase64(Eval("BugID").ToString()) %>' data-target="#viewiFrameReg" CssClass="modalButton" data-toggle="modal" runat="server"><%#Eval("Title") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                <asp:BoundField DataField="RequestByUserName" HeaderText="RequestByUserName" />
                                <asp:BoundField DataField="ApplicationName" HeaderText="ApplicationName" />
                                <asp:BoundField DataField="FeatureName" HeaderText="FeatureName" />
                                <asp:BoundField DataField="BugTypeName" HeaderText="BugTypeName" />
                                <asp:BoundField DataField="BugPriorityName" HeaderText="BugPriorityName" />
                
                               <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <div class="text-nowrap text-center">
                                                <asp:HyperLink ID="hlView" SkinID="View" NavigateUrl='<%# "~/AdminPanel/Bug/BUG_Bug/BUG_BugView.aspx?BugID=" + Eval("BugID").ToString() %>' data-target="#viewiFrameReg" data-toggle="modal" runat="server"></asp:HyperLink>
                                                <asp:HyperLink ID="hlEdit" SkinID="Edit" NavigateUrl='<%# "~/AdminPanel/Bug/BUG_Bug/BUG_BugAddEdit.aspx?BugID=" + Eval("BugID").ToString() %>' runat="server"></asp:HyperLink>
                                                <asp:LinkButton ID="lbtnDelete" runat="server"
                                                    SkinID="Delete"
                                                    OnClientClick="javascript:return confirm('Are you sure you want to delete record ? ');"
                                                    CommandName="DeleteRecord"
                                                    CommandArgument='<%#Eval("BugID") %>'>
                                                </asp:LinkButton>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <div>
                    </div>
                </div>
                <!--/div--> 
            </div>
        </div>
    </div>
    </div>
</div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphScripts" Runat="Server">      
</asp:Content>

