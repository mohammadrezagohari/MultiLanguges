<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
            height: 1375px;
        }

        .auto-style2 {
            height: 302px;
            text-align: center;
            border: 2px dotted white;
        }

        .auto-style3 {
            height: 59px;
            border: 2px dotted white;
        }

        .auto-style4 {
            width: 756px;
            border: 2px dotted white;
        }

        .auto-style5 {
            width: 100%;
            border: 2px dotted white;
        }

        .auto-style6 {
            height: 1px;
            border: 2px dotted white;
        }

        .Manage {
            text-decoration: none;
            font-family: 'B Titr';
            font-size: 20px;
            color: #000000;
        }

        .auto-style7 {
            height: 591px;
        }

        #DataList1 {
            height: 580px;
            width: 95%;
            margin: 5px 5px 5px 5px;
        }
    </style>
</head>
<body style="background-color: orange;">
    <form id="form1" runat="server">
        <center>
        <table class="auto-style1" dir="rtl">
            <tr>
                <td class="auto-style2" colspan="2" style="background-image: url('aks/Header.jpg'); background-repeat: no-repeat; font-family: 'B Titr'; font-size: 36px; color: #FFFFFF; direction: ltr;"><asp:Label ID="lbltitel" runat="server" Text="<%$ Resources:Login,title %>" />
                    <br />
                  <asp:HyperLink ID="lnkFa" runat="server" NavigateUrl="~/changelang.aspx?lang=fa-ir" Text="FA" />
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="lnkEN" runat="server" NavigateUrl="~/changelang.aspx?lang=en-us" Text="EN" />
                </td>
            </tr>
        <center>
            <tr>
                <td class="auto-style3" colspan="2">
                    <center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:hyperlink runat="server" ID="lnkhome" NavigateUrl="~/Default.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;"  Text="<%$ Resources:Login,home %>"></asp:hyperlink>
                    &nbsp;&nbsp; |&nbsp;&nbsp;<asp:hyperlink runat="server" ID="linkcontact" NavigateUrl="~/TamasBaMa.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;" Text="<%$ Resources:Login,contact %>"></asp:hyperlink>
                     &nbsp;&nbsp; |&nbsp;<asp:hyperlink runat="server" ID="lnkakhar" NavigateUrl="~/dabarema.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;" Text="<%$ Resources:Login,about%>"></asp:hyperlink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                        </center>
                        </td>
            </tr>
            <tr>
                <td class="auto-style4">
       
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="711px">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="OnvanLabel" runat="server" CssClass="Manage" Text='<%# Eval("Onvan") %>' />
                            <br />
                            <br />
                            &nbsp;<asp:Label ID="MatnLabel" runat="server" Text='<%# Eval("Matn") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBNahalestanConnectionString %>" SelectCommand="SELECT [Onvan], [Matn] FROM [MatnSite]"></asp:SqlDataSource>

                </td>
                <td>
                    <table class="auto-style5">
                        <tr><td style="border:2px dotted white;"><h2><asp:label ID="Label1" runat="server" Text="<%$Resources:Login,singin %>" /></h2></td></tr>
                        <tr><td>
                            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
                                <LayoutTemplate>
                                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                        <tr>
                                            <td>
                                                <table cellpadding="0">
                                                    <tr>
                                                        <td align="center" colspan="2">Log In</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Text="<%$Resources:Login,username %>"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Text="<%$Resources:Login,password %>"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:CheckBox ID="RememberMe" runat="server" Text="<%$Resources:Login,remember %>" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color:Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2">
                                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="<%$Resources:Login,singin %>" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                            </asp:Login>
                            </td></tr>

                        <tr>
                            <td class="auto-style6">
                                <h2><asp:label ID="lblaboutweb" runat="server" Text="<%$Resources:Login,aboutweb %>" /></h2>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="aks/morakkabat.jpg" style="height: 155px; width: 238px" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">فروش انواع نهال مرکبات در نهالستان همیشه سبز خزر (يکي از بزرگترين توليد کنندگان نهال تزئيني کامکوات):
                                <br />
                                - نهال کامکوات
                                <br />
                                - نهال پرتقال
                                <br />
                                - نهال ليمو شيرين<br />
&nbsp;- نهال نارنج ابلق
                                <br />
                                - نهال پرتقال خوني<br />
&nbsp;- نهال ليمو عماني
                                <br />
                                - نهال نارنگي
                                <br />
&nbsp;- نهال نارنگي ژاپني<br />
&nbsp;- نهال يافا
                                <br />
                                - نهال پيج
                                <br />
                                - نهال خوني ناول
                                <br />
                                - نهال ليمو ترش
                                <br />
                                - و...
                                <br />
                                - و انواع خزانه نارنج معمولي و ژاپني سيترنج و سيتروملو و پونسيروس و ...
                                <br />
                                در نهالستان همیشه سبز خزر<br style="color: rgb(85, 85, 85); font-family: Tahoma; font-size: 10.6667px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 12.8px; orphans: auto; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(237, 159, 57);" />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
            </center>
    </form>
</body>
</html>
