<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebContact.aspx.cs" Inherits="WebApp1.WebContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="literal" runat="server" />
    <section class="card shadow mx-5"> 
        <div class="card-header card-title text-center">Contact Form</div>
        <div class="card-body">
            <!--contact Id-->
             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label1" runat="server" Text="ContactId" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="TextId" runat="server" CssClass="form-control" />


                </div>
            </div>
           

            <!--firstName-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl1" runat="server" Text="FirstName" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="txtName1" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="txtName" runat="server" ControlToValidate="txtName1"
                                display="Static" Text="*" ErrorMessage="FirstName is required" 
                                CssClass="text-danger"/>
                </div>
            </div>

            <!--lasttName-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label2" runat="server" Text="LastName" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="TextName" runat="server" CssClass="form-control" />
                </div>
            </div>
            
            <!--Email-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label3" runat="server" Text="Enter Email" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="txtEmail" runat="server" CssClass="form-control" />
                </div>
            </div>

            <!--Birthdate-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label4" runat="server" Text="Enter BirthDate" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="TextDate" runat="server" CssClass="form-control" />
                </div>
            </div>

            <!--MobileNo-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label5" runat="server" Text="Enter mobile No" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="txtNo" runat="server" CssClass="form-control" />
                </div>
            </div>
            <!--workphone-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label6" runat="server" Text="Enter WorkPhn No" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="txtNo1" runat="server" CssClass="form-control" />
                </div>
            </div>
            <!--Homephn-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label7" runat="server" Text="Enter HomePhn No" />
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox id="txtNo2" runat="server" CssClass="form-control" />
                </div>
            </div>
 
 
 
 
            
            
            
            
        
        </div>

</section></asp:Content>
