<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="SearchNews.aspx.cs" Inherits="SelectNews" Title="搜索结果" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <%--<tr style="background-image: url(Images/b4_bg.gif)">
            <td style="text-align: left; height: 22px; padding-left: 15px">
                <asp:Label ID="lblType" runat="server" Style="font-weight: 700;color: #FFFFFF; font-size: large"></asp:Label>
            </td>
        </tr>--%>
        <tr>
            <td colspan="2" style="text-align: left; padding-left: 15px;">
                <span>
                    <asp:Label ID="lblType" runat="server" Style="font-weight: 700; font-family:微软雅黑; color: #000000; font-size: x-large;"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td style="height: 5px;">
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlstNews" runat="server" CellPadding="3" OnItemCommand="dlstNews_ItemCommand"
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    GridLines="Both">
                    <ItemTemplate>
                        <table style="font-size: 9pt;">
                            <tr>
                                <td class="dtd2">
                                    &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" Font-Bold="false" Font-Size="Large" runat="server"><%#DataBinder.Eval(Container.DataItem,"Title") %></asp:LinkButton>
                                </td>
                                <td style="width: 150px">
                                     &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" Font-Size="Medium" Font-Bold="false"><%#DataBinder.Eval(Container.DataItem, "IssueDate")%></asp:Label> 
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
