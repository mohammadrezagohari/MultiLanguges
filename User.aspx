<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
            height: 796px;
        }

        .auto-style2 {
            height: 302px;
            text-align: center;
        }

        .auto-style3 {
            height: 45px;
        }

        .auto-style4 {
            width: 756px;
        }

        .auto-style5 {
            width: 42%;
            height: 147px;
        }

        .auto-style6 {
            height: 1px;
        }

        .auto-style7 {
            width: 147px;
        }
        .auto-style8 {
            width: 684px;
        }
    </style>
</head>
<body style="background-color: orange;">
    <form id="form1" runat="server">
        <center>
        <table class="auto-style1" dir="rtl">
            <tr>
                <td class="auto-style2" colspan="2" style="background-image: url('aks/Header.jpg'); background-repeat: no-repeat; font-family: 'B Titr'; font-size: 36px; color: #FFFFFF; direction: ltr;">نهالستان همیشه سبز خزر</td>
            </tr>
        <center>
            <tr>
                <td class="auto-style3" colspan="2">
                    <center>
                    <a href="Default.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;" >صفحه اصلی</a>
                    &nbsp;&nbsp; |&nbsp;&nbsp;<a href="TamasBaMa.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;">تماس با ما</a>
                     &nbsp;&nbsp; |&nbsp;<a href="dabarema.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;"> درباره ما </a>
                        </center>
                        </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    <br />
                    <br />
                    <br />

                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style7">نام:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">نام خانوادگی:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">ایمیل:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">نام کاربری:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">گذرواژه:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                                </td>
                            </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="UserPass" HeaderText="UserPass" SortExpression="UserPass" />
                            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                            <asp:BoundField DataField="UserFirestName" HeaderText="UserFirestName" SortExpression="UserFirestName" />
                            <asp:BoundField DataField="UserLastName" HeaderText="UserLastName" SortExpression="UserLastName" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBNahalestanConnectionString %>" DeleteCommand="DELETE FROM [tblUser] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPass] = @original_UserPass) OR ([UserPass] IS NULL AND @original_UserPass IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserFirestName] = @original_UserFirestName) OR ([UserFirestName] IS NULL AND @original_UserFirestName IS NULL)) AND (([UserLastName] = @original_UserLastName) OR ([UserLastName] IS NULL AND @original_UserLastName IS NULL))" InsertCommand="INSERT INTO [tblUser] ([UserName], [UserPass], [UserEmail], [UserFirestName], [UserLastName]) VALUES (@UserName, @UserPass, @UserEmail, @UserFirestName, @UserLastName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblUser]" UpdateCommand="UPDATE [tblUser] SET [UserName] = @UserName, [UserPass] = @UserPass, [UserEmail] = @UserEmail, [UserFirestName] = @UserFirestName, [UserLastName] = @UserLastName WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPass] = @original_UserPass) OR ([UserPass] IS NULL AND @original_UserPass IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserFirestName] = @original_UserFirestName) OR ([UserFirestName] IS NULL AND @original_UserFirestName IS NULL)) AND (([UserLastName] = @original_UserLastName) OR ([UserLastName] IS NULL AND @original_UserLastName IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_UserID" Type="Int32" />
                            <asp:Parameter Name="original_UserName" Type="String" />
                            <asp:Parameter Name="original_UserPass" Type="String" />
                            <asp:Parameter Name="original_UserEmail" Type="String" />
                            <asp:Parameter Name="original_UserFirestName" Type="String" />
                            <asp:Parameter Name="original_UserLastName" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox4" Name="UserName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="UserPass" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="UserEmail" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox1" Name="UserFirestName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="UserLastName" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="UserPass" Type="String" />
                            <asp:Parameter Name="UserEmail" Type="String" />
                            <asp:Parameter Name="UserFirestName" Type="String" />
                            <asp:Parameter Name="UserLastName" Type="String" />
                            <asp:ControlParameter ControlID="GridView1" Name="original_UserID" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox4" Name="original_UserName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="original_UserPass" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="original_UserEmail" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox1" Name="original_UserFirestName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="original_UserLastName" PropertyName="Text" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6">
                                <h2>درباره وب</h2>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="aks/morakkabat.jpg" style="height: 155px; width: 238px" /></td>
                        </tr>
                        <tr>
                            <td>فروش انواع نهال مرکبات در نهالستان همیشه سبز خزر (يکي از بزرگترين توليد کنندگان نهال تزئيني کامکوات):
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
