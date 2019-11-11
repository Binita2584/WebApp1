<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepeaterExmp2.aspx.cs" Inherits="WebApp1.RepeaterExmp2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <div class="h2 bg-success text-white font-weight-bold">Repeater example</div>
        <div class="row">
            <div class="col">
                <asp:Repeater ID="repeater2" runat="server" OnItemCommand="repeater2_ItemCommand">
                    <HeaderTemplate>
                        <h4 class="bg-dark text-light p-2">Customer List</h4>
                        <table class="table table-dark">
                            <thead>
                                <tr>
                                    <th>
                                        CompanyName
                                    </th>
                                    <th>Contact Nmae</th>
                                    <th>City</th>
                                    <th>Country</th>
                                    <th></th>
                                </tr>
                            </thead>
                        
                        <div>
                    </HeaderTemplate>
                    <FooterTemplate>
                        <tfoot>
                            <tr>
                                <td colspan="5" class="bg-info text-dark text-right p-1">End Of List</td>
                            </tr>
                        </tfoot>
                        </table>
                    </FooterTemplate>
                    <ItemTemplate>
                        <tr>
                         <td> <%# DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                    <td> <%#DataBinder.Eval(Container.DataItem,"ContactName") %></td>
                    <td> <%#DataBinder.Eval(Container,"DataItem.City") %></td>
                   <td> <%#DataBinder.Eval(Container,"DataItem.Country") %></td>
                          
                       <td>     
                    
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-warning btn-sm w-100" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>' /></td>
                        </tr>
                           
                    </ItemTemplate>
                    
                    <AlternatingItemTemplate>
                       <tr>
                         <td> <%# DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                    <td> <%#DataBinder.Eval(Container.DataItem,"ContactName") %></td>
                    <td> <%#DataBinder.Eval(Container,"DataItem.City") %></td>
                   <td> <%#DataBinder.Eval(Container,"DataItem.Country") %></td>
                          
                       <td>     
                    
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-warning btn-sm w-100" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>' /></td>
                        </tr>
                        
                    </AlternatingItemTemplate>
                </asp:Repeater>

            </div>
        </div>

    </section>

</asp:Content>
