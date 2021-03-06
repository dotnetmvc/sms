﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountSecretKeyChange.aspx.cs" Inherits="ZHSMSPlatform.Root.Account.AccountSecretKeyChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>密钥修改</title>
    <link type="text/css" rel="stylesheet" href="../../scripts/ui/skins/Aqua/css/ligerui-all.css" />
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <link type="text/css" rel="stylesheet" href="../../css/pagination.css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/ui/js/ligerBuild.min.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
    <script src="../../Script/formValidator/DateTimeMask.js" type="text/javascript"></script>
    <script src="../../Script/formValidator/datepicker/WdatePicker.js" type="text/javascript"></script>
    <script type="text/javascript" type="javascript" src="../../JavaScript/Prompt/ymPrompt.js"></script>
    <link rel="stylesheet" type="text/css" href="../../JavaScript/Prompt/skin/qq/ymPrompt.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <div class="navigation">
            <a href="javascript:history.go(-1);" class="back">后退</a>首页 &gt; 帐号管理 &gt; 密码修改
        </div>
        <div id="contentTab">
            <ul class="tab_nav">
                <li class="selected"><a onclick="tabs('#contentTab',0);" href="javascript:;">密码修改</a></li>
            </ul>
            <div class="tab_con" style="display: block;">
                <table class="form_table">
                    <col width="150px">
                    <col>
                    <tbody>
                        <tr>
                            <th>帐号：</th>
                            <td>
                                <asp:Label ID="lbl_code" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>原始密钥：</th>
                            <td>
                                <asp:Label ID="lbl_oldSecretKey" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>密码：</th>
                            <td>
                                <asp:TextBox ID="txt_pass" TextMode="Password" runat="server" CssClass="txtInput"></asp:TextBox>*
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="txt_pass" Display="Dynamic"
                                    ErrorMessage="请填写密码">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <th>新密钥：</th>
                            <td>
                                <asp:TextBox ID="txt_newSecretKey" runat="server" CssClass="txtInput" MaxLength="16"></asp:TextBox>*
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txt_newSecretKey" Display="Dynamic"
                                    ErrorMessage="请填写16位的新密钥，由数字和字母组成">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="foot_btn_box">
                    <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btnSubmit" OnClick="btnSubmit_Click" />
                    &nbsp;<input name="重置" type="reset" class="btnSubmit" value="重 置" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

