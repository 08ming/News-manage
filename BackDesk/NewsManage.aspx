<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsManage.aspx.cs" Inherits="NewsManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        
        /* 未访问前的样式 */A:link
        {
            color: #606060;
            font-size: 16px;
            text-decoration: none;
        }
        /* 鼠标激活样式 */A:visited
        {
            color: #606060;
            font-size: 16px;
            text-decoration: none;
        }
        /* 鼠标悬停时的样式 */A:hover
        {
            color: #009966;
            font-size: 16px;
            text-decoration: none;
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
                <td colspan="5" align="left">
                    <asp:Label runat="server" Font-Names="STCaiyun" Font-Size="X-Large">编辑新闻</asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    输入关键字：
                    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>&nbsp;
                    <asp:DropDownList ID="ddlNewsCategories" runat="server" Width="78px" CausesValidation="True">
                        <asp:ListItem>时事新闻</asp:ListItem>
                        <asp:ListItem>环球经济</asp:ListItem>
                        <asp:ListItem>军事世界</asp:ListItem>
                        <asp:ListItem>科学技术</asp:ListItem>
                        <asp:ListItem>生活理财</asp:ListItem>
                        <asp:ListItem>社会百态</asp:ListItem>
                        <asp:ListItem>世界体育</asp:ListItem>
                        <asp:ListItem>娱乐综艺</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Height="20px" OnClick="btnSearch_Click"
                        Text="查询" />
                    <span  style ="float :right;">
                          <asp:LinkButton runat="server" ForeColor="#009900" PostBackUrl="~/BackDesk/Index.aspx">返回首页</asp:LinkButton>
                    </span>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:GridView ID="gvdNews" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        Height="1px" PageSize="12" Width="100%" CssClass="txt" OnPageIndexChanging="gvdNews_PageIndexChanging"
                        OnRowDeleting="gvdNews_RowDeleting" OnRowDataBound="gvdNews_RowDataBound" CellPadding="3"
                        BackColor="White">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID"></asp:BoundField>
                            <asp:BoundField DataField="title" HeaderText="新闻标题"></asp:BoundField>
                            <asp:BoundField DataField="Type" HeaderText="新闻类别"></asp:BoundField>
                            <asp:BoundField DataField="IssueDate" HeaderText="发布时间"></asp:BoundField>
                            <asp:HyperLinkField HeaderText="操作" Text="编辑" DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/BackDesk/UpdateNews.aspx?id={0}"
                                Target="right"></asp:HyperLinkField>
                            <asp:CommandField ShowDeleteButton="True" HeaderText="操作"></asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <RowStyle ForeColor="#000066" />
                        <EmptyDataTemplate>
                            抱歉，您要查询的信息不存在!
                        </EmptyDataTemplate>
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#353030" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
