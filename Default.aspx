<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default" Title="新闻发布系统" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Label runat="server" ID="login_flag" Font-Size="X-Large" Font-Bold="true" ForeColor="Red"></asp:Label>
    </div>
    <div style="padding: 20px; background-color: #F2F2F2;">
      <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink1"  Style="text-align: left" Font-Names="微软雅黑" Font-Size="Medium" runat="server" NavigateUrl="~/NewsCategory.aspx?id=1">时事新闻</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstShiShi" runat="server" OnItemCommand="dlstShiShi_ItemCommand">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink2"  Style="text-align: right" Font-Names="微软雅黑" Font-Size="Medium" runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=2">环球经济</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstEconomic" runat="server" OnItemCommand="dlstEconomic_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
          <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink3" Font-Names="微软雅黑" Font-Size="Medium" runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=4"
                                    Style="text-align: right">科学技术</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstScience" runat="server" OnItemCommand="dlstScience_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
          <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink4" Font-Names="微软雅黑" Font-Size="Medium"  runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=3"
                                    Style="text-align: right">军事世界</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstMilitary" runat="server" OnItemCommand="dlstMilitary_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
          <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink5" Font-Names="微软雅黑" Font-Size="Medium"  runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=6"
                                    Style="text-align: right">社会百态</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstSocial" runat="server" OnItemCommand="dlstSocial_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink6"  Font-Names="微软雅黑" Font-Size="Medium"  runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=7">世界体育</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstSports" runat="server" OnItemCommand="dlstSports_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink7" Font-Names="微软雅黑" Font-Size="Medium"  runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=8">娱乐综艺</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstFun" runat="server" OnItemCommand="dlstFun_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
        <div class="layui-col-md6">
          <div class="layui-card">
            <div class="layui-card-header"><asp:HyperLink ID="HyperLink8" Font-Names="微软雅黑" Font-Size="Medium"  runat="server" Font-Bold="False" NavigateUrl="~/NewsCategory.aspx?id=5">生活理财</asp:HyperLink></div>
            <div class="layui-card-body">
              <asp:DataList ID="dlstLife" runat="server" OnItemCommand="dlstLife_ItemCommand">
                    <ItemTemplate>
                        <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                            cellpadding="0">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                </td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                </asp:DataList>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
