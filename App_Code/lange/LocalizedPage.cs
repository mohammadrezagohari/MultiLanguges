using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LocalizedPage
/// </summary>
public class LocalizedPage:BasePage
{

    public LocalizedPage()
    {

    }

    protected override void InitializeCulture()
    {
        base.InitializeCulture();

        if (Session["Culture"]==null)
        {
            Session["Culture"] = "en-US";
        }

        Culture = Session["Culture"].ToString();
        UICulture = Session["Culture"].ToString();

    }

    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);
        switch (Session["Culture"].ToString().ToUpper())
        {
            case "FA-IR":
                {
                    Theme = "RTL";
                    break;
                }
            case "EN-US":
                {
                    Theme = "LTR";
                    break;
                }
            default:
                Theme = "RTL";
                break;
        }
    }

}