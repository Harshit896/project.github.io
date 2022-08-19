<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Project.content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    content
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
        <style type="text/css">
        .a{
   margin: auto;
  padding: 0;
  background-color:lightgreen

        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div class="a">
        <div align="right">
          <asp:Button ID="btnSignOut" runat="server" Text="SignOut" OnClick="btnSignOut_Click1" />
        </div>
        <br />
        <br />
        <br />

        <div align="center" >
            <h1>Welcome to the world </h1>
        </div>
  
         </div>
</asp:Content>
