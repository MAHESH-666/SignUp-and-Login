<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Login.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 269px;
            margin:auto;
            border:ridge 5px red;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style4 {
            height: 48px;
        }
        .ig{
            text-align:center;
            font-size:30px;
        }
        .auto-style5 {
            width: 151px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
        #form1{
            border-radius:40px;
        }

         table{
            margin:auto;
            width:400px;
            border:5px aliceblue ridge;
            border-radius:10px; 
            box-shadow: 0px 0px 10px 5px blue; 
        }
        .auto-style7 {
            text-align: center;
            font-size: 30px;
            height: 61px;
        }
    </style>
</head>
<body style="height: 397px">
    <form id="form1" runat="server">
        <div>
        </div>
        <table cellpadding="3" cellspacing="3" class="auto-style1" aria-busy="False" style="border: thin groove #000080">
            <tr>
                <td colspan="2" class="auto-style7" style="background-color: #000080; color: #FFFFFF; font-size: 43px;">SIGNUP </td>
            </tr>
            <tr>
                <td class="auto-style2">Firstname</td>
                <td>
                    <asp:TextBox ID="FnTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnTextBox" Display="Dynamic" ErrorMessage="Please Enter First name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Lastname</td>
                <td>
                    <asp:TextBox ID="LnTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnTextBox" Display="Dynamic" ErrorMessage="Please Enter Last name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="167px">
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                        <asp:ListItem Value="3">Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Please Enter Gender" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="EmTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmTextBox" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="AdTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AdTextBox" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Username</td>
                <td>
                    <asp:TextBox ID="UnTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UnTextBox" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="PwTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PwTextBox" Display="Dynamic" ErrorMessage="Please Enter password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm<br />
                    Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="CpwTextBox" runat="server" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CpwTextBox" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PwTextBox" ControlToValidate="CpwTextBox" Display="Dynamic" ErrorMessage="Password Not Matched" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="37px" Text="SignUp" Width="108px" OnClick="Button1_Click" BackColor="Navy" BorderColor="White" Font-Size="20px" ForeColor="White" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="Login.aspx" style="color: #000080">Go To Login</a></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="137px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
