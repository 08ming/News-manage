﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="AddNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .txtwid
        {
            width: 384px;
        }
        body
        {
            width: 810px;
            color: #606060;
            font-size: 16px;
            border: solid 1px #353030;
        }
        .titleSystemName
        {
            width:768px;
            float: left;
            margin-top: 3px;
            padding-left: 30px;
            font-size: 25px;
            font-weight: bolder;
            font-family: Arial, Helvetica,sans-serif;
            color: #ffffff;
            background-color:#353030;
        }
        .style1
        {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="810px">
            <tr>
                <td class="style1 " colspan="3">
                    <div class="titleSystemName">
                        浏览信息
                    </div>
                </td>
            </tr>  <tr><td style ="height :18px"></td></tr>
            <tr>
                <td colspan="3" align="left">
                    <asp:Label runat="server" Font-Names="STCaiyun" Font-Size="X-Large">添加新闻</asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 28px; text-align: right;">
                    新闻类别：
                </td>
                <td>
                    <asp:DropDownList ID="dlstNewsType" runat="server" AutoPostBack="True" Width="387px">
                        <asp:ListItem>国际新闻</asp:ListItem>
                        <asp:ListItem>国内新闻</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="labTitle" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 120px; height: 28px;">
                    新闻标题：
                </td>
                <td>
                    <asp:TextBox ID="txtNewsTitle" runat="server" CssClass="txtwid" MaxLength="15"></asp:TextBox>
                    <p style="text-align: left;">
                        *字数在12字以内</p>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewsTitle"
                        ErrorMessage="*标题必填" Width="118px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 120px; height: 28px;">
                    新闻内容：
                </td>
                <td>
                    <asp:TextBox ID="txtNewsContent" runat="server" Height="211px" TextMode="MultiLine"
                        CssClass="txtwid"></asp:TextBox>
                </td>
                <td style="width: 85px; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewsContent"
                        ErrorMessage="*内容必填" Width="128px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="237px"/>
                </td>
                <td align="center" style="width: 383px; height: 26px;">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添加" Width="74px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" OnClick="btnReset_Click"
                        Text="取消" Width="74px" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: Red; text-align: center;">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
