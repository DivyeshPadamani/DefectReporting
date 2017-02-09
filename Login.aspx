<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <style>
        #body1 {
            background-color: aliceblue;
        }
    </style>

    <meta charset="utf-8" />
    <title>Login | DBugReporting</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/global/plugins/font-awesome/css/font-awesome.min.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/global/plugins/simple-line-icons/simple-line-icons.min.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/global/plugins/bootstrap/css/bootstrap.min.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/global/plugins/uniform/css/uniform.default.css")%>" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<%=ResolveClientUrl("~/Default/assets/global/plugins/select2/select2.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/admin/pages/css/login-soft.css")%>" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="<%=ResolveClientUrl("~/Default/assets/global/css/components.css")%>" id="style_components" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/global/css/plugins.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/admin/layout/css/layout.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveClientUrl("~/Default/assets/admin/layout/css/themes/darkblue.css")%>" rel="stylesheet" type="text/css" id="style_color" />
    <link href="<%=ResolveClientUrl("~/Default/assets/admin/layout/css/custom.css")%>" rel="stylesheet" type="text/css" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />

</head>
<body class="login" id="body1">
    <form id="form1" runat="server">
        <!-- BEGIN LOGO -->
        <div class="logo" style="margin: 30px auto 20px auto;">
            <h1 style="font-size: 25px" class="btn green-haze pull-center">DBug Reporting</h1>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="menu-toggler sidebar-toggler">
        </div>
        <!-- END SIDEBAR TOGGLER BUTTON -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <h3 class="form-title">Login to your account</h3>
            <div class="row">
                <div class="col-md-12">
                    <ucMessage:ShowMessage ID="ucMessage" runat="server" />
                </div>
            </div>
            <div class="alert alert-danger display-hide">
                <button class="close" data-close="alert"></button>
                <span>Enter username and password. </span>
            </div>
            <%--<div class="form-group input-icon ">
                <i class="fa fa-user"></i>
                <asp:DropDownList ID="ddlUserCategory" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>--%>
            <div class="form-group">

                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <asp:HiddenField ID="hfWidth" ClientIDMode="Static" runat="server" />
                    <asp:HiddenField ID="hfHeight" runat="server" ClientIDMode="Static" />

                    <asp:TextBox ID="txtUsername" CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Username" runat="server"></asp:TextBox>
                </div>
                <%--<asp:RequiredFieldValidator ID="rvtxtUsername" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="form-group">

                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Password" runat="server"></asp:TextBox>
                </div>
                <%--<asp:RequiredFieldValidator ID="rvtxtPassword" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>--%>
            </div>
            <div class="form-actions">
                <label class="checkbox">
                </label>
                <asp:Button ID="btnLogin" runat="server" CssClass="btn green-haze pull-right" Text="Login" OnClick="btnLogin_Click" />
            </div>

            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                    <asp:Image ID="Image1" runat="server" AlternateText="logo" ImageUrl="~/Default/Images/DIET_Logo.jpg" Width="150" />
                </div>
            </div>
            <hr />
            <div class="forget-password" style="margin-top: 5px;">

                <div class="row">
                    <div class="col-md-12">
                        <h5 style="text-align: center">Forgot your password ?<asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="#"> Click here</asp:HyperLink></h5>
                    </div>
                </div>

            </div>
            <!-- END LOGIN FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        <div class="copyright">
            <%=DateTime.Now.Year.ToString() %> &copy; DIET.
        </div>
        <!-- END COPYRIGHT -->




        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <!--[if lt IE 9]>
<script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/respond.min.js")%>"></script>
<script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/excanvas.min.js")%>"></script> 
<![endif]-->
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/jquery.min.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/jquery-migrate.min.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/bootstrap/js/bootstrap.min.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/jquery.blockui.min.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/uniform/jquery.uniform.min.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/jquery.cokie.min.js")%>" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="<%=ResolveClientUrl("~/Default/assets/global/plugins/jquery-validation/js/jquery.validate.min.js")%>" type="text/javascript"></script>
        <script type="text/javascript" src="<%=ResolveClientUrl("~/Default/assets/global/plugins/select2/select2.min.js")%>"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="<%=ResolveClientUrl("~/Default/assets/global/scripts/metronic.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/admin/layout/scripts/layout.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/admin/layout/scripts/demo.js")%>" type="text/javascript"></script>
        <script src="<%=ResolveClientUrl("~/Default/assets/admin/pages/scripts/login.js")%>" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <script>
            jQuery(document).ready(function () {
                Metronic.init(); // init metronic core components
                Layout.init(); // init current layout
                Login.init();
                Demo.init();
            });
        </script>
        <!-- END JAVASCRIPTS -->
    </form>
</body>
</html>