<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thirdpage.aspx.cs" Inherits="_1.ASP_example.Thirdpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style5 {
            width: 189px;
        }
        .auto-style6 {
            width: 195px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 195px;
            height: 110px;
        }
        .auto-style9 {
            width: 189px;
            height: 110px;
        }
        .auto-style11 {
            height: 110px;
        }
        .auto-style12 {
            width: 125px;
        }
        .auto-style13 {
            width: 125px;
            height: 110px;
        }
        .auto-style14 {
            width: 100%;
            height: 146px;
        }
        .auto-style15 {
            width: 195px;
            height: 230px;
        }
        .auto-style16 {
            width: 189px;
            height: 230px;
        }
        .auto-style17 {
            width: 125px;
            height: 230px;
        }
        .auto-style18 {
            height: 230px;
        }
        .auto-style19 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="1">Red</asp:ListItem>
                        <asp:ListItem Value="2">White</asp:ListItem>
                        <asp:ListItem Value="3">Blue</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">Male</asp:ListItem>
                        <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                        <asp:ListItem Value="1">A</asp:ListItem>
                        <asp:ListItem Value="1">B</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="4">D</asp:ListItem>
                        <asp:ListItem Value="5">E</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Select" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Select" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Value="1">SSLC</asp:ListItem>
                        <asp:ListItem Value="2">PLUS TWO</asp:ListItem>
                        <asp:ListItem Value="3">B-TECH</asp:ListItem>
                        <asp:ListItem Value="4">M-TECH</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Photo"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Select" />
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Upload" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style19" Height="194px" Visible="False">
                        <table class="auto-style14">
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Label9"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="113px" Width="206px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7" colspan="2">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
