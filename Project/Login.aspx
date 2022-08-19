<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(45deg, greenyellow, dodgerblue);
            font-family: "Sansita Swashed", cursive;
            background-image: url("BG picture.jpg");
        }

        .t {
            position: relative;
            padding: 50px 50px;
            background: #fff;
            border-radius: 10px;
            background-color: azure;
        }

            .t .txt {
                position: relative;
                width: 300px;
                height: 50px;
                margin-bottom: 50px;
            }

                .t .txt input {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    border: 2px solid #000;
                    outline: none;
                    background: none;
                    padding: 10px;
                    border-radius: 10px;
                    font-size: 1.2em;
                }

            .t .btn input 
                .t.txt input  
        {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            border: 2px solid #000;
            outline: none;
            background: none;
            padding: 10px;
            border-radius: 10px;
            font-size: 1.2em;
        }

        .auto-style1 {
            left: 0;
            top: -1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="t">
            <div class="lab">
                <h2>Please Login </h2>
            </div>
            <div class="lab">
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                &nbsp;
            </div>
            <div class="txt">
                <asp:TextBox ID="txtUserName" runat="server" BorderStyle="Solid" CssClass="auto-style1"></asp:TextBox>
            </div>
            <div class="lab">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </div>
            <div class="txt">
                <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Solid" TextMode="Password"></asp:TextBox>

            </div>
            <div class="btn">

                <asp:Button ID="BtnLogin" runat="server" Text="Sign In" OnClick="BtnLogin_Click" ForeColor="#0033CC" Width="155px" Height="50px" />
                <asp:Button ID="BtnSignup" runat="server" Text="Sign Up" ForeColor="#0033CC" Width="155px" Height="50px" OnClick="BtnSignup_Click" />

            </div>
            <div class="lab">

                <asp:Label ID="lblErrorMassage" runat="server" Text="Incorrect User Credential" ForeColor="Red"></asp:Label>
            </div>
        </div>


    </form>
</body>
</html>
