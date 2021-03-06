﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account_Pwd.aspx.cs" Inherits="WebSMS.Root.ACC.Account_Pwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>密码修改</title>
    <link type="text/css" rel="stylesheet" href="../../scripts/ui/skins/Aqua/css/ligerui-all.css" />
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <link type="text/css" rel="stylesheet" href="../../css/pagination.css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/ui/js/ligerBuild.min.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
    <script type="text/javascript" src="../../JavaScript/Prompt/ymPrompt.js"></script>
    <link rel="stylesheet" type="text/css" href="../../JavaScript/Prompt/skin/qq/ymPrompt.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <div class="navigation">
            <a href="javascript:history.go(-1);" class="back">后退</a>首页  &gt; 密码修改
        </div>
        <div class="tools_box">
            <div class="tools_bar">
                <a href="Account_List.aspx" class="tools_btn"><span><b class="all">返回账号列表</b></span></a>
            </div>
        </div>
        <div id="contentTab">
            <ul class="tab_nav">
                <li class="selected"><a onclick="tabs('#contentTab',0);" href="javascript:;">修改密码</a></li>
            </ul>
            <div class="tab_con" style="display: block">
                <table class="form_table">
                    <col width="150px">
                    <col>
                    <tbody>
                        <tr>
                            <th>账号编号：</th>
                            <td>
                                <asp:TextBox ID="txt_AccountID" runat="server" Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <th>原始密码：</th>
                            <td>
                                <asp:TextBox ID="txt_oldpwd" runat="server" CssClass="txtInput normal"
                                    TextMode="Password" MaxLength="32">0</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="txt_oldpwd" Display="Dynamic"
                                    ErrorMessage="*请填写原始密码"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <th>新的密码：</th>
                            <td>
                                <asp:TextBox ID="txt_newpwd" runat="server" CssClass="txtInput normal"
                                    TextMode="Password" MaxLength="32">0</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txt_newpwd" Display="Dynamic"
                                    ErrorMessage="*请填写新的密码"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>

            <div class="foot_btn_box">
                <asp:Button ID="btnSubmit" runat="server" Text="更新密码" CssClass="btnSubmit" OnClick="btnSubmit_Click" />
                &nbsp;<input name="重置" type="reset" class="btnSubmit" value="重 置" />
            </div>
        </div>
    </form>
</body>
