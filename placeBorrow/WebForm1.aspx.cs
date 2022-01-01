using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DateTime now = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = now.ToShortDateString();
            convertSelectTime();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["羽球場"]["week"] = Server.UrlEncode(DropDownList2.Text);
            Response.Cookies["羽球場"]["day"] = Server.UrlEncode(DropDownList3.Text);
            if (RadioButton1.Checked == true)
            {
                Response.Cookies["羽球場"]["region"] = "A";
            }
            else
            {
                Response.Cookies["羽球場"]["region"] = "B";
            }
            if (CheckBox1.Checked)
            {
                Response.Cookies["羽球場"]["time1"] = "0";
            }
            else { Response.Cookies["羽球場"]["time1"] = ""; }
            if (CheckBox2.Checked)
            {
                Response.Cookies["羽球場"]["time2"] = "1";
            }
            else { Response.Cookies["羽球場"]["time2"] = ""; }
            if (CheckBox3.Checked)
            {
                Response.Cookies["羽球場"]["time3"] = "2";
            }
            else { Response.Cookies["羽球場"]["time3"] = ""; }
            Response.Cookies["羽球場"].Expires = DateTime.Today.AddDays(10);
            Response.Cookies["羽球場"]["date"] = Label1.Text;
            Server.Transfer("WebForm2.aspx");
        }
        protected void convertSelectTime()
        {
            int nowDayN=0, selectDayN, selectWeekN;
            string nowDAY = now.DayOfWeek.ToString();
            if (nowDAY == "Monday")
            {
                nowDayN = 1;
            }
            else if (nowDAY == "Tuesday")
            {
                nowDayN = 2;
            }
            else if (nowDAY == "Wednesday")
            {
                nowDayN = 3;
            }
            else if (nowDAY == "Thursday")
            {
                nowDayN = 4;
            }
            else if (nowDAY == "Friday")
            {
                nowDayN = 5;
            }
            else if (nowDAY == "Saturday")
            {
                nowDayN = 6;
            }
            else if (nowDAY == "Sunday")
            {
                nowDayN =7;
            }

            selectDayN = DropDownList3.SelectedIndex +1;
            selectWeekN = DropDownList2.SelectedIndex;

     
            Label1.Text = now.AddDays(selectDayN - nowDayN + 7 * selectWeekN).ToShortDateString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            convertSelectTime();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            convertSelectTime();
        }
    }
}