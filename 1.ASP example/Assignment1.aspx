<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1.aspx.cs" Inherits="_1.ASP_example.Assignment1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            width: 192px;
            text-align: center;
        }
        .auto-style5 {
            width: 192px;
            height: 26px;
            text-align: center;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 192px;
            height: 26px;
        }
        .auto-style9 {
            width: 24px;
        }
        .auto-style10 {
            height: 26px;
            width: 24px;
        }
        .auto-style12 {
            height: 26px;
            width: 316px;
        }
        .auto-style13 {
            width: 316px;
        }
        .auto-style15 {
            text-align: center;
            font-size: x-large;
            height: 39px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style8 {
            width: 183px;
            text-align: left;
        }
        .auto-style18 {
            width: 550px;
        }
        .auto-style19 {
            height: 39px;
        }
        .auto-style20 {
            width: 192px;
            text-align: center;
            height: 38px;
        }
        .auto-style21 {
            width: 24px;
            height: 38px;
        }
        .auto-style22 {
            width: 316px;
            height: 38px;
        }
        .auto-style23 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15" colspan="3"><strong>ASSIGNMENT 1 (FORM)</strong></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Name is required" ControlToValidate="Nametxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Age" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Agetxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RangeValidator ID="AgeValidator" runat="server" ErrorMessage="Age between 18 and 60" ControlToValidate="Agetxt" MaximumValue="60" MinimumValue="18" ForeColor="Red" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Addresstxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ErrorMessage="Address is required" ControlToValidate="Addresstxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Phone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="Phonetxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RegularExpressionValidator ID="PhoneValidator" runat="server" ErrorMessage="Write in correct format" ControlToValidate="Phonetxt" ValidationExpression="^[6789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Email" runat="server" Text="E-mail"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Emailtxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Write in correct format" ControlToValidate="Emailtxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style9" rowspan="2">
                        <asp:RadioButtonList ID="Genderlist" runat="server" Width="138px" AutoPostBack="True">
                            <asp:ListItem Value="0">Male</asp:ListItem>
                            <asp:ListItem Value="1">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ErrorMessage="Gender is required" ControlToValidate="Genderlist" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="State" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="Statelist" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="1">Kerala</asp:ListItem>
                            <asp:ListItem Value="2">Tamil Nadu</asp:ListItem>
                            <asp:ListItem Value="3">Karnataka</asp:ListItem>
                            <asp:ListItem Value="4">Maharashtra</asp:ListItem>
                            <asp:ListItem Value="5">Goa</asp:ListItem>
                            <asp:ListItem Value="6">Andhra Pradesh</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="StateValidator" runat="server" ErrorMessage="State is required" ControlToValidate="Statelist" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Qualification" runat="server" Text="Qualification"></asp:Label>
                    </td>
                    <td class="auto-style9" rowspan="5">
                        <asp:CheckBoxList ID="Qualificationlist" runat="server" Width="156px" AutoPostBack="True">
                            <asp:ListItem Value="1">SSLC</asp:ListItem>
                            <asp:ListItem Value="2">PLUS TWO</asp:ListItem>
                            <asp:ListItem Value="3">BCA</asp:ListItem>
                            <asp:ListItem Value="4">MCA</asp:ListItem>
                            <asp:ListItem Value="5">B-TECH</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Photo" runat="server" Text="Photo"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="PhotoUpload" runat="server" />
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="PhotoValidator" runat="server" ErrorMessage="Photo is required" ControlToValidate="PhotoUpload" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="Usernametxt" runat="server" AutoPostBack="True" OnTextChanged="Usernametxt_TextChanged"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Username is required" ControlToValidate="Usernametxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Passwordtxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="ConfirmPassword" runat="server" Text="ConfirmPassword"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Confirmpasswordtxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:CompareValidator ID="PasswordValidator" runat="server" ErrorMessage="Password Mismatched" ControlToCompare="Passwordtxt" ControlToValidate="Confirmpasswordtxt" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Display" runat="server" Text="Display" OnClick="Display_Click" BackColor="#99CCFF" Font-Bold="True" Font-Size="14pt" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="14">
                        <asp:Panel ID="Panel1" runat="server" Width="801px" Visible="False" Wrap="False" Height="522px">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style14" colspan="2"><strong>DISPLAYED INFORMATION</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style14" colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Name:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Name1" runat="server" Text="Name 1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Age:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Age1" runat="server" Text="Age1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Address:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Address1" runat="server" Text="Address1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Phone:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Phone1" runat="server" Text="Phone1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">E-mail:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Email1" runat="server" Text="E-mail1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Gender:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Gender1" runat="server" Text="Gender1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">State:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="State1" runat="server" Text="State1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Qualification:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Qualification1" runat="server" Text="Qualification1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Photo:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Photourl1" runat="server" Text="Photourl1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style18">
                                        <asp:Image ID="Photoimage1" runat="server" Height="162px" Width="192px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Username:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Username1" runat="server" Text="Username1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Password:</td>
                                    <td class="auto-style18">
                                        <asp:Label ID="Password1" runat="server" Text="Password1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style18">&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
