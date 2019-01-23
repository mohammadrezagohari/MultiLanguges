using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class dabarema : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserName.Text ="خوش آمدید کابر عزیز "+ Session["UserAccontName"].ToString() +"  "+ Session["UserAccontLastName"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if (TextBox2.Text != "")
            {
                SqlDataSource1.Insert();
                Label1.Text = "ثبت شد";

            }
        }
        if (TextBox1.Text == "")
        {
            if (TextBox2.Text == "")
            {
                Label1.Text = "فیلد ها رو پر کنید لطفا!";
            }
        }
    }
}