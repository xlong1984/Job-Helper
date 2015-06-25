using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_Company : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton1.CausesValidation = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Http://www.bu.edu");
    }
}
