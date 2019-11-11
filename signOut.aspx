<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signOut.aspx.cs" Inherits="WebApp1.signOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="jumbotron">
    <div class="display-1 text-danger"> You have logged out.you will have to
        <asp:HyperLink ID="link1" runat="server" Text="re-login"
            NavigateUrl="~/SignInForm" />to access the site
    </div>

</section>
</asp:Content>
