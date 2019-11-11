<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="WebApp1.ProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-primary text-light text-center p-2"> Product List</h2>
        <div class="row">
            <div class="col offset-2">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <asp:Label ID="lbl1" runat="server"
                            cssClass="input-group-text" Text="search:" />
                    </div>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" />
                    <div class="input-group-append">
                         <asp:LinkButton ID="btn" runat="server"
                            cssclass="btn btn-primary" 
                            Onclick="btnSubmit_Click1" >
                            <i class="fa fa-search"></i> 
                            </asp:LinkButton>
                        <asp:LinkButton ID="btnClear" runat="server" CssClass="btn btn-danger"
                            OnClick="btnClear_Click">
                            <i class="fa fa-close"></i></asp:LinkButton>
                       
                       
                    </div>
                </div>

            </div>

        </div>
        <div class="row">
            <div class="col offset-2">
                <asp:GridView ID="grid1" runat="server" CssClass="table table-striped border" 
                    PageSize="5" AllowPaging="true" DataKeyNames="ProductId" 
                    GridLines="None" ShowHeaderWhenEmpty="true"
                    AutoGenerateColumns="false"
                    OnPageIndexChanging="grid1_PageIndexChanging"
                    OnRowEditing="grid1_RowEditing">

                    <EmptyDataTemplate>
                        <div class="alert alert-warning"> ur search did not yield any result</div>
                    </EmptyDataTemplate>
                    <PagerStyle   HorizontalAlign="Center"/>
                    <PagerSettings  Mode="Numeric" Position="TopAndBottom" PageButtonCount="5"/>
                    <Columns>
                        <asp:ButtonField CommandName="Edit" ButtonType="Link"
                            
                            DataTextField="ProductName" HeaderText="Product Name"/>
                        <asp:BoundField HeaderText="Unit Price" DataField="UnitPrice" DataFormatString="{0:C2}"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-8 offset-2 text-center">
                <asp:Button  ID="btnCreateNew" runat="server" Text="Add New Product"
                    cssClass="btn btn-dark btn-lg p-2" OnClick="btnCreateNew_Click"/>
            </div>
        </div>
    </section>
</asp:Content>
