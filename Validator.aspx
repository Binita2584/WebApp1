<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="WebApp1.Validator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
       
        function myValidation(s, e) {
            if (e.Value.length > 4) {
                e.IsValid = true;
            } else {
                e.IsValid = false;
            }
        

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white font-weight-bold text-center">Working with Validation</h2>
       <asp:ValidationSummary ID="sum1" runat="server"  DisplayMode="List" ShowSummary="true" 
           CssClass="alert alert-danger"
           headerText="Error"/>
        <div class="row">
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Required Field validation

                    </div>

                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox ID="txtName" cssClass="form-control" runat="server"
                                placeholder="Enter name" />
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtName"
                                display="Static" Text="*" ErrorMessage="Name is required" 
                                CssClass="text-danger"/>
                        </div>
                    </div>
                </div>

            </div>


            <div class="col-3 p-2">
                <div class="card h-100" >
                    <div class="card-header card-title bg-warning">Compare Validation1

                    </div>

                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox ID="Textpwd" cssClass="form-control" runat="server"
                                placeholder="Enter password" />
                             <asp:Textbox ID="Textconfirm" cssClass="form-control" runat="server"
                                placeholder="Confirm password" />
                            
                            <asp:CompareValidator ID="cv1" runat="server" ControlToValidate="Textconfirm"
                                display="Static" Text="*" ErrorMessage="PW should match" 
                                CssClass="text-danger" ControlToCompare="Textpwd" Operator="Equal" Type="String"/>


                        </div>
                    </div>
                </div>

            </div>
            
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Compare Validator 2</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtDate" Cssclass="form-control" runat="server"
                                placeholder="Enter BirthDate"  />
                           
                            <asp:CompareValidator ID="cv2" runat="server"
                                ControlToValidate="txtDate" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Invalid Date"
                              Operator="DataTypeCheck" Type="Date"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Range validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtAge" Cssclass="form-control" runat="server"
                                placeholder="Enter Age"  />
                           
                            <asp:RangeValidator ID="rv1" runat="server"
                                ControlToValidate="txtAge" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Age b/w 18 and 100"
                              Operator="DataTypeCheck" Type="Integer"
                                MinimumValue="18" MaximumValue="100"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Regular expression validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" Cssclass="form-control" runat="server"
                                placeholder="Enter Email"  />
                           
                            <asp:RegularExpressionValidator ID="RegEx1" runat="server"
                                ControlToValidate="txtEmail" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="invalid email"
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                               
                                />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Custom validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtUserId" Cssclass="form-control" runat="server"
                                placeholder="Enter a valid user name"  />
                           
                            <asp:CustomValidator ID="cv3" runat="server"
                                ControlToValidate="txtUserId" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="user id should be five or more than five letters and non existing one"
                              ClientValidationFunction="myValidation" OnServerValidate="cv3_ServerValidate"
                               
                                />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-12 text-center">
                <button class="btn btn-outline-danger">Submit</button>

            </div>

        </div>

    </section>
</asp:Content>
