﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepeaterExamp1.aspx.cs" Inherits="WebApp1.RepeaterExamp1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <div class="h2 bg-success text-white font-weight-bold">Repeater example</div>
        <div class="row">
            <div class="col">
                <asp:Repeater ID="repeater1" runat="server">
                    <HeaderTemplate>
                        <h4 class="bg-dark text-light p-2">Customer List</h4>
                        <div>
                    </HeaderTemplate>
                    <FooterTemplate>
                        </div class="row">
                        <h6 class="bg-info text-dark text-right p-1">End of List</h6>
                    </FooterTemplate>
                    <ItemTemplate>
                        <div class="col-3 border m-0 p-2">
                         The customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                    ,represented bt <%#DataBinder.Eval(Container.DataItem,"ContactName") %>
                    is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                    <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <br />
                    For more details of the customer,click
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                        />.
                            </div>
                    </ItemTemplate>
                    
                    <AlternatingItemTemplate>
                        <div class="col-3 bg-light border">
                        The customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                    ,represented bt <%#DataBinder.Eval(Container.DataItem,"ContactName") %>
                    is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                    <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <br />
                    For more details of the customer,click
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                        />.
                            </div>
                    </AlternatingItemTemplate>
                </asp:Repeater>

            </div>
        </div>

    </section>
</asp:Content>
