using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : LocalizedPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string strCon =
            "Data Source=.;Initial Catalog=DBNahalestan;Integrated Security=True";
        SqlConnection sqlcon = new SqlConnection(strCon);

        string strsql =
            "SELECT UserID, UserName, UserPass, UserEmail, UserFirestName, UserLastName FROM tblUser WHERE  (UserName = @UserName) AND (UserPass = @UserPass)";
        SqlCommand sqlcmd = new SqlCommand(strsql, sqlcon);
        sqlcmd.Parameters.AddWithValue("@UserName", Login1.UserName.ToString());
        sqlcmd.Parameters.AddWithValue("@UserPass", Login1.Password.ToString());

        SqlDataReader reader;
        sqlcon.Open();
        reader = sqlcmd.ExecuteReader();
        reader.Read();

        if (reader.HasRows)
        {
            if (reader["UserName"].ToString() == Login1.UserName.ToString() && reader["UserPass"].ToString() == Login1.Password.ToString())
            {
                    Session["UserAccontName"] = reader[4].ToString();
                    Session["UserAccontLastName"] = reader[5].ToString();
                    string strPathAdmin =
                        "~/Post.aspx";
                    Response.Redirect(strPathAdmin);
            }
            else
            {
                Login1.FailureText = "اطلاعات ورودی صحیح نیست";
            }

        }
        reader.Close();


        sqlcon.Close();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["singin"] = null;
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
}