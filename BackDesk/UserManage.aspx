<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="UserManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
  <style type="text/css">
        body
        {
            width: 810px;
            color: #606060;
            font-size: 12px;
            border: solid 1px #606060;
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
        A:link
        {
	        color: #606060;
	        font-size: 16px;
	        text-decoration: none;
        }
        /* 鼠标激活样式 */
        A:visited
        {
	        color: #606060;
	        font-size: 16px;
	        text-decoration: none;
        }
        /* 鼠标悬停时的样式 */
        A:hover
        {
	        color: #009966;
	        font-size: 16px;
	        text-decoration: none;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <table  cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
				<tr >
					<td align="center" align="left">
                        <div class="titleSystemName">
                        用户管理
                        </div>
                    <br />
                    <span  style ="float :right;">
                          <asp:LinkButton runat="server" ForeColor="#009900" OnClick="Unnamed1_Click">返回首页</asp:LinkButton>
                    </span>
					</td> 
				 </tr>
				 <tr><td style ="height :8px"></td></tr>
				<tr>
					<td>
	                     <asp:GridView ID="gdvUserManage" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False" DataKeyNames ="ID"  Width="100%" 
                                        HorizontalAlign="Center"
							             OnPageIndexChanging="gdvUserManage_PageIndexChanging" 
                                        OnRowCancelingEdit="gvEditAdmin_RowCancelingEdit" 
                                        OnRowDeleting="gvEditAdmin_RowDeleting" OnRowEditing="gvEditAdmin_RowEditing" 
                                        OnRowUpdating="gvEditAdmin_RowUpdating" CellPadding="3" BackColor="White" 
                                       >
							            <HeaderStyle Font-Bold="True"  BackColor="#353030" 
                                            ForeColor="White"></HeaderStyle>
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="用户编号" ReadOnly="True"  HeaderStyle-HorizontalAlign="Left">
                                                <ItemStyle HorizontalAlign="Center" Width="120px" />
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Name" HeaderText="用户姓名"  HeaderStyle-HorizontalAlign="Left" >
                                                <ItemStyle HorizontalAlign="Left" />
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PassWord" HeaderText="用户密码"  HeaderStyle-HorizontalAlign="Left" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:CommandField ShowDeleteButton="True" HeaderText="操作"   HeaderStyle-HorizontalAlign="Left">
                                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>

                                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                                            </asp:CommandField>
                                            <asp:CommandField ShowEditButton="True" HeaderText="操作"   
                                                HeaderStyle-HorizontalAlign="Left"  ItemStyle-Width="100px" >
                                        <HeaderStyle HorizontalAlign="Left" BackColor="#353030"></HeaderStyle>

                                        <ItemStyle></ItemStyle>
                                            </asp:CommandField>
                                        </Columns>
                                       <FooterStyle BackColor="White" ForeColor="#000066" />
                                       <RowStyle ForeColor="#000066" />
                                       <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                       <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
					            </td>
				            </tr>
				            <tr>
				         <td>
                    <br />
                  
				</td>
				</tr>
			</table>
    </form>
</body>
</html>
