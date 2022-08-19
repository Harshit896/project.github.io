<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbourd.aspx.cs" Inherits="Project.Dashbourd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
   margin: 0;
  padding: 0;
  background-color:lightgreen

        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="right">
            <asp:Label ID="lbluserdetail" runat="server" Text=""></asp:Label>
            <br />
          
            <asp:Button ID="btnlogout" runat="server" Text="SignOut" OnClick="btnlogout_Click" />
        </div>
        <br />
        <br />
        <br />

        <div align="center">
            <h1>Welcome to the world </h1>
        </div>
    </form>
</body>
</html>
