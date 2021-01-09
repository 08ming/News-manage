<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/layui/css/layui.css"/>
    <style type="text/css">
        body
        {
            position: relative;
            width: 180px;
            margin: 0 auto;
            text-align: center;
            color: #606060;
            font-size: 12px;
            border: solid 1px #353030;
            margin-left: 120px;
        }
        .style1
        {
            height: 40px;
        }
        .titleSystemName
        {
            width:100%;
            float: left;
            margin-top: 3px;
            text-align:center;
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
        <table style="width: 180px;" cellspacing="0" cellpadding="0">
            <tr>
                <td class="style1 ">
                    <div class="titleSystemName">
                        导航栏</div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" NodeIndent="15"
                        Width="155px">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                        <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                            VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Text="添加新闻" Value="添加新闻">
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=1" Target="right" Text="时事新闻" Value="时事新闻"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=2" Target="right" Text="环球经济" Value="环球经济"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=3" Target="right" Text="军事世界" Value="军事世界"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=4" Target="right" Text="科学技术" Value="科学技术"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=5" Target="right" Text="生活理财" Value="生活理财"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=6" Target="right" Text="社会百态" Value="社会百态"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=7" Target="right" Text="世界体育" Value="世界体育"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="AddNews.aspx?id=8" Target="right" Text="娱乐综艺" Value="娱乐综艺"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="管理新闻" Value="管理新闻">
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=1" Target="right" Text="时事新闻" Value="时事新闻"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=2" Target="right" Text="环球经济" Value="环球经济"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=3" Target="right" Text="军事世界" Value="军事世界"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=4" Target="right" Text="科学技术" Value="科学技术"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=5" Target="right" Text="生活理财" Value="生活理财"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=6" Target="right" Text="社会百态" Value="社会百态"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=7" Target="right" Text="世界体育" Value="世界体育"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="NewsManage.aspx?id=8" Target="right" Text="娱乐综艺" Value="娱乐综艺"></asp:TreeNode>
                            </asp:TreeNode>
                            
                            <asp:TreeNode Text="用户管理" Value="用户管理">
                                <asp:TreeNode NavigateUrl="~/BackDesk/AddUser.aspx" Target="right" Text="添加用户" Value="添加用户"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/BackDesk/UserManage.aspx" Target="right" Text="管理用户"
                                    Value="管理用户"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" ForeColor="Black" HorizontalPadding="2px"  Font-Size="Medium"
                            NodeSpacing="0px" VerticalPadding="2px" />
                    </asp:TreeView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>

</html>
