<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataList1.aspx.cs" Inherits="WebApp1.DataList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <div class="h2 bg-success text-white font-weight-bold">Repeater example</div>
        <div class="row">
            <div class="col">
                <asp:DataList ID="dataLikst1" runat="server" 
                    DataKeyField="CustomerId"
                    OnCancelCommand="dataLikst1_ItemCommand"
                    OnEditCommand="dataLikst1_EditCommand"
                    OnUpdateCommand="dataLikst1_UpdateCommand"
                    OnItemCommand="dataLikst1_ItemCommand"
                    OnDeleteCommand="dataLikst1_DeleteCommand"
                    
                    
                    RepeatColumns="4" RepeatDirection="Horizontal" RepeatLayout="Table">

                    <HeaderTemplate>
                        <h4 class="bg-dark text-light p-2">Customer List</h4>
                        
                    </HeaderTemplate>
                    <FooterTemplate>
                        
                        <h6 class="bg-info text-dark text-right p-1">End of List</h6>
                    </FooterTemplate>
                    <ItemTemplate>
                        <div class="border m-0 p-2">
                         The customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                    ,represented bt <%#DataBinder.Eval(Container.DataItem,"ContactName") %>
                    is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                    <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <br />
                    For more details of the customer,click
                            <asp:LinkButton ID="editLink1" runat="server" Text="Modify"
                                CommandName="Edit"
                                CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                                CssClass="btn btn-outline-primary btn-sm w-50"></asp:LinkButton>
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-outline-primary btn-sm w-50" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                        />.
                            </div>
                    </ItemTemplate>
                    
                    <AlternatingItemTemplate>
                        <div class="bg-light border">
                        The customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                    ,represented bt <%#DataBinder.Eval(Container.DataItem,"ContactName") %>
                    is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                    <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            
                    <div class="mt-2 mb-2 d-flex">

                            <asp:LinkButton ID="editLink1" runat="server" Text="Modify"
                                CommandName="Edit"
                                CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                                CssClass="btn btn-outline-primary btn-sm w-50"></asp:LinkButton>
                    <asp:LinkButton ID="link1" runat="server"
                        CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                        CommandName="View"
                        CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                        />.
                            </div>
                            </div>
                    </AlternatingItemTemplate>

                    <EditItemTemplate>
                        <table class="table tabble-sm">
                            <tr>
                                <td>Company</td>
                                <td>
                                    <asp:TextBox ID="txtCompany" runat="server" 
                                         CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>'></asp:TextBox>
                                     
                                </td>
                            </tr>
                             <tr>
                                <td>Contact</td>
                                <td>
                                    <asp:TextBox ID="txtContact" runat="server" 
                                         CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"ContactName") %>'></asp:TextBox>
                                     
                                </td>
                            </tr>
                             <tr>
                                <td>City</td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="server" 
                                         CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"City") %>'></asp:TextBox>
                                     
                                </td>
                            </tr>
                             <tr>
                                <td>Country</td>
                                <td>
                                    <asp:TextBox ID="txtCountry" runat="server" 
                                         CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"Country") %>'></asp:TextBox>
                                     
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                      <asp:Button ID="btnUpdate" runat="server" Text="Update"
                                        CommandName="Update" CssClass="btn btn-sm btn-success"></asp:Button>
                                     <asp:Button ID="btnCancel" runat="server" Text="Discard"
                                        CommandName="Cancel" CssClass="btn btn-sm btn-secondary"></asp:Button>
                                </td>
                            </tr>

                        </table>
                    </EditItemTemplate>
                </asp:DataList>

            </div>
        </div>

    </section>

</asp:Content>
