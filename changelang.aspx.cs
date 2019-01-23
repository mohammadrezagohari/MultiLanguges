using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changelang : LocalizedPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getLang = Request.Params["lang"];
        string addressin = Request.ServerVariables["HTTP_REFERER"];
        if (addressin == null)
        {
            Response.Redirect("~/Default.aspx",false);
            return;
        }

        if (getLang==null)
        {
            Response.Redirect(addressin,false);
            return;
        }

        switch (getLang.ToUpper())
        {
            case "FA-IR":
            case "EN-US":
                {
                    string strlang = getLang.Substring(0, 2).ToLower() +
                        "-" +
                        getLang.Substring(3, 2).ToUpper();
                    Session["Culture"] = strlang;
                    Response.Redirect(addressin,false);
                    return;
                }

            default:
                {
                    Response.Redirect("~/Default.aspx", false);
                    return;
                }
           
        }

    }
}