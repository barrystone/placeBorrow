using System;
using System.Data;
using System.Data.SqlClient;
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
            if (Request.Cookies["羽球場"] != null)
            {

                Label2.Text = Request.Cookies["羽球場"]["region"];
                Label3.Text = Request.Cookies["羽球場"]["time1"];
                Label6.Text = Request.Cookies["羽球場"]["time2"];
                Label7.Text = Request.Cookies["羽球場"]["time3"];
                Label4.Text = Request.Cookies["羽球場"]["date"];
                Label5.Text = Request.Cookies["羽球場"]["day"];
                Label8.Text = Request.Cookies["羽球場"]["week"];

                if (Label3.Text != "") { Label9.Text = "9:00~12:00"; }
                if (Label6.Text != "") { Label10.Text = "12:00~15:00"; }
                if (Label7.Text != "") { Label11.Text = "15:00~18:00"; }
                if (Label5.Text == "1") { Label12.Text = "星期一"; }
                else if (Label5.Text == "2") { Label12.Text = "星期二"; }
                else if (Label5.Text == "3") { Label12.Text = "星期三"; }
                else if (Label5.Text == "4") { Label12.Text = "星期四"; }
                else if (Label5.Text == "5") { Label12.Text = "星期五"; }
            }


        }
        protected void sql_update(string str)
        {
            string sqlConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
            string sql = "UPDATE TEST SET phone = @phone , username = @username WHERE day  = @day AND week = @week AND region = @region AND time =@time";
            using (SqlConnection con = new SqlConnection(sqlConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@day", Label5.Text);
                    cmd.Parameters.AddWithValue("@region", Label2.Text);
                    cmd.Parameters.AddWithValue("@week", Label8.Text);
                    cmd.Parameters.AddWithValue("@time", str);
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
                    con.Open();
                    //cmd.ExecuteNonQuery();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                if (Label3.Text != "") { sql_update(Label3.Text); }
                if (Label6.Text != "") { sql_update(Label6.Text); }
                if (Label7.Text != "") { sql_update(Label7.Text); }

                DateTime dtDay = DateTime.Today.AddDays(-365);
                Response.Cookies["羽球場"].Expires = dtDay;

                Server.Transfer("WebForm1.aspx");

             }
        }

     
    }
}
