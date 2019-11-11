<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StateManagement.aspx.cs" Inherits="WebApp1.StateManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
<section class="container">
    <h2 class="bg-success text-white text-center">State Management</h2>
    <hr />
    Application Counter :=
    <asp:Label ID="lblApplication" runat="server" Font-Bold="true" />
    <br />
    Session Couner :=
    <asp:Label ID="lblSession" runat="server" Font-Bold="true" />
    <br />
    <hr />


    <div style="border:1px solid black;">
        <div style="background-color=deepskyblue;color:white;font-weight:bold;padding:2px;
             width:100%; border-bottom:1px solid black">
            working with Cookies


        </div>
        <div style="padding=10px;">
            <asp:Label ID="lblName" runat="server" Text="Cookie Name: " Width="150px" />
            <asp:TextBox ID="txtName" runat="server" BorderColor="Wheat"
                BorderStyle="Dotted" BorderWidth="2px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Cookie Value: " Width="150px" />
            <asp:TextBox ID="txtValue" runat="server" BorderColor="Wheat"
                BorderStyle="Dotted" BorderWidth="2px" />
            <br />
            <asp:Button ID="BtnStore" runat="server" Text="Store Cookies" 
                BackColor="YellowGreen" ForeColor="Red" Font-Bold="true" BorderColor="Blue"
                BorderStyle="Groove" BorderWidth="1px" OnClick="BtnStore_Click" Width="154px" />
             
            
            <asp:Button ID="btnReview" runat="server" OnClick="btnReview_Click" Text="Retrive Cookies" Width="180px" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />
             
            
        </div>
    </div>
</section>




    </asp:Content>
