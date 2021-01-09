<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="NewsCategory.aspx.cs" Inherits="ShowNewsInformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td colspan="2" style="text-align: left; padding-left: 15px;">
                <span>
                    <asp:Label ID="Label4" runat="server" Style="font-weight: 700; font-family:微软雅黑; color: #000000; font-size: x-large;"></asp:Label></span>
            </td>
        </tr>
         <tr>
            <td style="height: 9px;">
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlstNews" runat="server" OnItemCommand="ldNewsSort_ItemCommand"
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="2" GridLines="Both">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="微软雅黑" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" />
                    <ItemTemplate>
                        <table style="font-size: 12pt;">
                            <tr>
                                <td class="dtd2">
                                    &nbsp;&nbsp;<asp:LinkButton ID="lbtnTitle" runat="server" Font-Bold="false" Font-Size="Large"><%#DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                </td>
                                <td  style="text-align:right;width: 150px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" Font-Size="Medium" Font-Bold="false"><%#DataBinder.Eval(Container.DataItem, "IssueDate")%></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="Black" Font-Bold="False" Font-Italic="False" Font-Names="微软雅黑" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                </asp:DataList>
            </td>
        </tr>
        <tr style="height: 30px;">
            <td>
                <br />
                <table>
                    <tr>
                        <td style="width: 69px">
                            <asp:Label ID="Label1" runat="server" Font-Size="16px" Text="当前页："></asp:Label>
                        </td>
                        <td style="width: 13px">
                            <asp:Label ID="currentPage" runat="server" Font-Size="16px" Text="1"></asp:Label>
                        </td>
                        <td style="width: 69px">
                            <asp:Label ID="Label2" runat="server" Font-Size="16px" Text="总页数："></asp:Label>
                        </td>
                        <td style="width: 13px">
                            <asp:Label ID="totalPage" runat="server" Font-Size="16px"></asp:Label>
                        </td>
                        <td style="width: 171px; text-align: right; font-size :16px">
                            <asp:LinkButton ID="firstPage" runat="server" Text="首页" OnClick="firstPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right; font-size :16px">
                            <asp:LinkButton ID="frontPage" runat="server" Text="上一页" OnClick="frontPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right;">
                            <asp:LinkButton ID="nextPage" runat="server" Font-Size="16px" Text="下一页" OnClick="nextPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right;">
                            <asp:LinkButton ID="lastPage" runat="server" Font-Size="16px" Text="尾页" Font-Underline="false" OnClick="lastPage_Click"></asp:LinkButton>
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
