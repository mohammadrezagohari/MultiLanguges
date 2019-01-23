<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="dabarema" %>


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
            width: 100%;
        }
        .auto-style6 {
            height: 1px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            direction: ltr;
        }
                .Manage {
            text-decoration: none;
            font-family: 'B Titr';
            font-size: 20px;
            color: #000000;
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
                                                <asp:HyperLink runat="server" CssClass="Manage" ID="lnk2" Text="مدیریت کاربران" NavigateUrl="~/User.aspx" /> &nbsp;&nbsp; |&nbsp;&nbsp;
                        <asp:Label runat="server" CssClass="Manage" ID="lblUserName" Text="" /> &nbsp;&nbsp; |&nbsp;&nbsp;
                    <a href="Default.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;" >صفحه اصلی</a>
                    &nbsp;&nbsp; |&nbsp;&nbsp;<a href="TamasBaMa.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;">تماس با ما</a>
                     &nbsp;&nbsp; |&nbsp;<a href="dabarema.aspx" style="font-family: 'B Titr'; font-size: 20px;text-decoration:none; color: #000000;"> درباره ما </a>
                        </center>
                        </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <table style="border: 5px double #FFFFFF; width: 369px; height: 309px" dir="rtl" >
                        <tr>
                            <td class="auto-style8" colspan="2" dir="rtl">
                                <center>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </center>
                            </td>
                            </tr>
                        <tr>
                            <td class="auto-style8" dir="rtl">عنوان:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="228px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">متن:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="156px" Width="232px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7" colspan="2">
                                <center>
                                <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="ثبت" Width="121px" />
                                    </center>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Onvan" HeaderText="Onvan" SortExpression="Onvan" />
                            <asp:BoundField DataField="Matn" HeaderText="Matn" SortExpression="Matn" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBNahalestanConnectionString %>" DeleteCommand="DELETE FROM [MatnSite] WHERE [ID] = @original_ID AND (([Onvan] = @original_Onvan) OR ([Onvan] IS NULL AND @original_Onvan IS NULL)) AND (([Matn] = @original_Matn) OR ([Matn] IS NULL AND @original_Matn IS NULL))" InsertCommand="INSERT INTO [MatnSite] ([Onvan], [Matn]) VALUES (@Onvan, @Matn)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MatnSite]" UpdateCommand="UPDATE [MatnSite] SET [Onvan] = @Onvan, [Matn] = @Matn WHERE [ID] = @original_ID AND (([Onvan] = @original_Onvan) OR ([Onvan] IS NULL AND @original_Onvan IS NULL)) AND (([Matn] = @original_Matn) OR ([Matn] IS NULL AND @original_Matn IS NULL))">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="original_ID" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox1" Name="original_Onvan" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="original_Matn" PropertyName="Text" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Onvan" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="Matn" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Onvan" Type="String" />
                            <asp:Parameter Name="Matn" Type="String" />
                            <asp:ControlParameter ControlID="GridView1" Name="original_ID" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox1" Name="original_Onvan" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="original_Matn" PropertyName="Text" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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