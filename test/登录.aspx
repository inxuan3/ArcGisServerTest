<%@ Page Title="" Language="C#" MasterPageFile="~/地图.Master" AutoEventWireup="true"
    CodeBehind="WebForm2.aspx.cs" Inherits="展会查询.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0;
        }
        #div4
        {
            display: none;
            position: absolute;
            z-index: 1000;
            height: 100%;
            width: 100%;
            background: #000000;
            filter: Alpha(opacity=30);
            opacity: 0.3;
        }
        #div5
        {
            display: none;
            position: absolute;
            height: 247px;
            width: 100%;
            padding-top: 10%;
            z-index: 1001;
            left:0px;
            top: 0px;
        }
    </style>
    <script type="text/javascript">
        function openme() {
            document.getElementById('div4').style.display = 'block';
            document.getElementById('div5').style.display = 'block';
        }
        function closeme() {
            document.getElementById('div4').style.display = 'none';
            document.getElementById('div5').style.display = 'none';
        }
        function logo_in() {
            alert()
            //验证
            //转向...
            //myform.action=""
            //myform.submit()
            closeme();
        }
    </script>
    <div id="div4">
    </div>
    <div id="div5">
        <table align="center"  width="30%" border="0" cellpadding="3" cellspacing="1" style="background: #e3e3e3;
            position: static; filter: progid:DXImageTransform.Microsoft.DropShadow(color=#FFFFFF,offX=0,offY=0,positives=false)">
            <tr id="m_tr">
                <td align="left" style="font-family: 华文细黑; font-size: large;">
                    <font color="#C1C1C1">欢迎登录：</font>
                </td>
                <td align="right">
                    <input id="close1" type="button" value="ｘ" onclick="closeme()" style="border-style: none;
                        border-color: #FFFFFF; cursor: hand; background-color: #e3e3e3; font-size: large;
                        color: #C1C1C1; font-weight: bolder; font-family: 'Arial Unicode MS';"/>
                </td>
            </tr>
            <tr/>
            <tr style=" border:0">
                <form method="post" style="left: 10px" runat="server">
                <td colspan="2" width="100%" bgcolor="#FFFFFF" height="160" style="border: 0; font-family: 微软雅黑; font-size: medium;"
                    align="center">
<asp:Login ID="Login2" runat="server" DestinationPageUrl="~/主页.aspx">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2">
                                        登录</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用    户:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                                            ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密     码:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                                            ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" 
                                            ValidationGroup="Login2" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
                </td>
                
                <tr style=" border:0">
                <br/>
                <td colspan="2" bgcolor="#FFFFFF" style=" border-width: 0px; font-family: 微软雅黑; font-size: small;" align="right">                    
                        没有账号？<a href="注册.aspx">立即注册</a></td>
                        <tr/>
                   <br/>     
                </form>
            </tr>
        </table>
    </div>
    <div id="login">
        <img alt="登录" onclick="openme()" src="图片/login.png"  height="50px" width="100px" onmouseover="this.width='120'; this.height='60';" onmouseout="this.width='100'; this.height='50'">
    </div>
</asp:Content>






