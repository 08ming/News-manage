<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" Title="新闻内容" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        <asp:Label ID="labTitle" runat="server"></asp:Label></h1>
    </br>
    <p style="width: 100%;">
        <span style="width: 70%; padding-left: 55px; font-size: 18px; line-height: 23.0px;
            word-break: break-all;">
            <%=GetContent()%>
        </span>
    </p>
    <p>
        <asp:Button ID="accessory" runat="server" Text="下载附件" Width="273px" OnClick="accessory_Click"/>
    </p>
    </br>
</asp:Content>
