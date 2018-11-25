<%@ Page Title="" Language="C#" MasterPageFile="~/地图.Master" AutoEventWireup="true"
    CodeBehind="注册.aspx.cs" Inherits="展会查询.WebForm1" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0;
        }
        #div6
        {
            display: block;
            position: absolute;
            z-index: 1000;
            height: 100%;
            width: 100%;
            background: #000000;
            filter: Alpha(opacity=30);
            opacity: 0.3;
        }
        #div7
        {
            display: block;
            position: absolute;
            height: 100%;
            width: 100%;
            padding-top: 10%;
            z-index: 1001;
            left: 0px;
            top: 0px;
        }
    </style>
    <script type="text/javascript">

        function closeme()
        {
            document.getElementById('div6').style.display = 'none';
            document.getElementById('div7').style.display = 'none';
            window.location.href = '登录.aspx';
        }
        function logo_in()
        {
            alert()
            //验证
            //转向...
            //myform.action=""
            //myform.submit()
            closeme();
        }
    </script>
    <div id="div6">
    </div>
    <div id="div7">
        <table align="center" width="30%" border="0" cellpadding="3" cellspacing="1" style="background: #e3e3e3;
            position: static; filter: progid:DXImageTransform.Microsoft.DropShadow(color=#FFFFFF,offX=0,offY=0,positives=false)">
            <tr id="m_tr">
                <td align="left" style="font-family: 华文细黑; font-size: large;">
                    <font color="#C1C1C1">请注册：</font>
                </td>
                <td align="right">
                    <input id="close1" type="button" value="ｘ" onclick="closeme()" style="border-style: none;
                        border-color: #FFFFFF; cursor: hand; background-color: #e3e3e3; font-size: large;
                        color: #C1C1C1; font-weight: bolder; font-family: 'Arial Unicode MS';">
                </td>
            </tr>
            <br />
            <tr style="border: 0">
                <form name="myform" method="post" style="left: 10px" runat="server">
                <td colspan="2" width="100%" bgcolor="#FFFFFF" height="160" style="border: 0; font-family: 微软雅黑;
                    font-size: medium;" align="center">
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" oncreateduser="CreateUserWizard1_CreatedUser">
                        <wizardsteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">
                                    注册新帐户</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                        AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                        ControlToValidate="ConfirmPassword" ErrorMessage="必须填写“确认密码”。" 
                                        ToolTip="必须填写“确认密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">电子邮件:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                        ControlToValidate="Email" ErrorMessage="必须填写“电子邮件”。" ToolTip="必须填写“电子邮件”。" 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">安全提示问题:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                        ControlToValidate="Question" ErrorMessage="必须填写“安全提示问题”。" 
                                        ToolTip="必须填写“安全提示问题”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">安全答案:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                        ControlToValidate="Answer" ErrorMessage="必须填写“安全答案”。" ToolTip="必须填写“安全答案”。" 
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                        ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                        Display="Dynamic" ErrorMessage="“密码”和“确认密码”必须匹配。" 
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">
                                    完成</td>
                            </tr>
                            <tr>
                                <td>
                                    已成功创建您的帐户。</td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                        CommandName="Continue" onclick="ContinueButton_Click" Text="继续" 
                                        ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </wizardsteps>
                    </asp:CreateUserWizard>
                </td>
                </form>
            </tr>
        </table>
    </div>
        <div id="login">
        <img alt="登录" onclick="openme()" src="图片/login.png"  height="50px" width="100px">

    </div>
</asp:Content>
