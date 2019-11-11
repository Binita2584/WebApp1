<%@ Page Language="C#" AutoEventWireUp="false" 
CodeBehind="Firstpage.aspx.cs" 
Inherits="WebApp1.Firstpage"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
<style>
.label {background:red;color:yellow;padding:5px;}
</style>

<script runat="server">

</script>

</head>
<body>
    <h2>Welcome to ASP.Net Appliction</h2>
    <form runat="server">
<%--
        <label for="username">User Name</label>
        <input type="text" name="username"/>
        <br/>
        <label for="password">Password</label>
        <input type="password" name="username" />
        <br />
        <button type="button">Submit</button>
--%>
<asp:label id="lbl1" runat="server" Text="User Name"/>
<asp:TextBox id="txt1" runat="server"/>
<br/><br/>

<asp:label id="lbl2" runat="server" Text="Password" cssClass="label"/>
<asp:TextBox id="txt2" runat="server" TextMode="Password"/>
<br/><br/>
<asp:Button id="btn1" runat="server"  Text="Submit" OnClick="btn1_Click"/>
    </form>
</body>
</html>