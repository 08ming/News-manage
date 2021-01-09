<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    body{
        margin:0;
        padding: 0;
        font-family: sans-serif;
        background: url(../Images/login_bg.jpg);
        background-size: cover;
    }
    .box
    {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        width:400px;
 	    padding: 40px;
        background:rgba(0,0,0,.8);
	    box-sizing:border-box;
	    box-shadow:0 15px 25px rgba(0,0,0,.5);
	    border-radius: 10px;/*登录窗口边角圆滑*/
    }
    .box h2
    {
	    margin:0 0 30px;
	    padding:0;
	    color:#fff;
	    text-align:center;
	    }
	    .box .inputBox
	    {
		    position:relative;
	    }
    .box .inputBox input
    {
	    width: 100%;
	    padding: 10px 0;
	    font-size:24px;
	    color: #fff;
	    letter-spacing: 1px;
	    margin-bottom:30px;/*输入框设置*/
	    border:none;
	    border-bottom:1px solid #fff;
	    outline:none;
	    background:transparent;
    }
    .box .inputBox label
    {
        position: absolute;
        top: 0;
        left: 0;
        padding: 10px 0;
        font-size: 24px;
        color: #fff;
        pointer-events: none;
        transition: .5s;
    }
    .box .inputBox input:focus ~ label,
    .box .inputBox input:valid ~ label
    {
        top: -18px;
	    left: 0;
	    color: #03a9f4;
	    font-size: 18px;
    }
    .box  input[type="submit"] 
    {
	    background: transparent;
	    border: none;
	    outline: none;
	    color: #fff;
	    background: #03a9f4;
	    padding: 10px 20px;
	    cursor: pointer;
	    border-radius: 5px;
    }
    </style>
</head>
<body>
    
    <div class="box">
        <h2>后台管理登录</h2>
        <form id="form1" runat="server">
            <div class="inputBox">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                <label>用户名</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*姓名必填"
                    ControlToValidate="username"></asp:RequiredFieldValidator>
            </div>
            <div class="inputBox">
		        <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
		        <label>密码</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*密码必填"
                    ControlToValidate="pwd"></asp:RequiredFieldValidator>
            </div>
            <div class="inputBox">
                <asp:TextBox ID="checkCode" runat="server"></asp:TextBox>
                <div style="background-color: #ececec;border: solid 1px #6AC0FF;font-size:medium; height:auto; width:35px;text-align:center;">
                    <asp:Label ID="verifyCode" runat="server"></asp:Label></div>
                <label>验证码</label>
                
            </div>
            <asp:Button ID="submit" runat="server" Text="登录" OnClick="submit_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cancel" runat="server" Text="取消" OnClick="cancel_Click"/>
	    </form>
	</div>
    <%--<table width="385" height="220" background="../Images/User_Login_206.gif">
        <tr>
            <td height="54">
            </td>
        </tr>
        <tr>
            <td align="right" width="120" height="30">
                用户名:
            </td>
            <td style="height: 5px">
                <asp:TextBox ID="username" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*姓名必填"
                    ControlToValidate="username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" height="30px">
                密&nbsp;&nbsp;&nbsp;码:
            </td>
            <td>
                <asp:TextBox ID="pwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*密码必填"
                    ControlToValidate="pwd"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" height="30px">
                验证码:
            </td>
            <td>
                <asp:TextBox ID="checkCode" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td style="color: Blue; text-align: left;">
                <div style="background-color: #ececec; width: 35px; height: 20px; border: solid 1px #6AC0FF;">
                    <asp:Label ID="verifyCode" runat="server"></asp:Label></div>
            </td>
        </tr>
    </table>
    <br />
    <p style="width: 385px">
        <asp:Button ID="submit" runat="server" Text="登录" OnClick="submit_Click" Width="74px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancel" runat="server" Text="取消" OnClick="cancel_Click" Width="74px" />
    </p>--%>
    </form>
</body>
</html>
