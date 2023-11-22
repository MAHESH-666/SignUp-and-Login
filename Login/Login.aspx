<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .auto-style2 {
            height: 46px;
        }
        table{
            margin:auto;
            width:400px;
            border:5px aliceblue ridge;
            border-radius:20px; 
            box-shadow: 0px 0px 10px 5px blue; 
        }
        .auto-style99{
            text-align:center;
            color:white;
            font-size:2rem;
            background-color:darkorange;
            height: 71px;
        }
        .link{
            text-align:center;

        }
        .auto-style101 {
            width: 437px;
        }
        .auto-style105 {
            height: 51px;
            width: 94px;
        }
        *{
            background:aliceblue;
        }
        #form1{
            background-color:white;
        }
        .auto-style107 {
            height: 41px;
        }
        .auto-style108 {
            height: 41px;
            width: 248px;
        }
        .auto-style109 {
            height: 51px;
            width: 3113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table cellpadding="4" cellspacing="4" class="auto-style101" >
            <tr>
                <td class="auto-style99" colspan="2" style="background-color: #000080; font-size: 44px; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FFFFFF;">Login</td>
            </tr>
            <tr>
                <td class="auto-style105">UserName</td>
                <td class="auto-style109">
                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="285px" OnTextChanged="TextBox1_TextChanged" BorderStyle="Solid" ForeColor="#0000CC"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style105">password</td>
                <td class="auto-style109">
                    <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="282px" TextMode="Password" BorderStyle="Solid" ForeColor="#0000CC"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style107" colspan="2">            <input type="checkbox" onchange="document.getElementById('TextBox2').type = this.checked ? 'text' : 'Password'"/>Show Password            
</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Height="53px" Text="Login" Width="124px" OnClick="Button1_Click" BackColor="Navy" BorderColor="White" BorderStyle="Double" Font-Size="Large" ForeColor="White" />
                    &nbsp;&nbsp; &nbsp;</td>

            </tr>

               <tr>
                <td class="link" colspan="2">&nbsp;
                   <a href="Register.aspx" style="color: #000080"> Not Registered Yet? Click here</a>
                 </td>

            </tr>
        </table>
    </form>
</body>
</html>
