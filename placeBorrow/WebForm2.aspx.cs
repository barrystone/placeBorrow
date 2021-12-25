using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.Cookies["羽球場"]["region"];
            Label2.Text = Request.Cookies["羽球場"]["time"];
            Label3.Text = Request.Cookies["羽球場"]["date"];
            Label4.Text = Request.Cookies["羽球場"]["day"];
        }
    }
}