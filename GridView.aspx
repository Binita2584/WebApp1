<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="WebApp1.GridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white text-center">Working With Grid View</h2>
       <div class="row">
           <div class="col">
               <asp:GridView ID="grid1" runat="server" AllowPaging="True" AllowSorting="True"
                   AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966"
                   BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CustomerID" 
                   DataSourceID="SqlDataSource1">
                   <AlternatingRowStyle BackColor="White" ForeColor="YellowGreen" /> 
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                      <%-- <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />--%>
                       <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                       <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                       <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                       <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                   </Columns>
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle BackColor="White" ForeColor="#330099" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [Country], [City]) VALUES (@CustomerID, @CompanyName, @ContactName, @Country, @City)" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [Country], [City] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [Country] = @Country, [City] = @City WHERE [CustomerID] = @CustomerID">
                   <DeleteParameters>
                       <asp:Parameter Name="CustomerID" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="CustomerID" Type="String" />
                       <asp:Parameter Name="CompanyName" Type="String" />
                       <asp:Parameter Name="ContactName" Type="String" />
                       <asp:Parameter Name="Country" Type="String" />
                       <asp:Parameter Name="City" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="CompanyName" Type="String" />
                       <asp:Parameter Name="ContactName" Type="String" />
                       <asp:Parameter Name="Country" Type="String" />
                       <asp:Parameter Name="City" Type="String" />
                       <asp:Parameter Name="CustomerID" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           </div>
       </div>
    </section>
</asp:Content>
