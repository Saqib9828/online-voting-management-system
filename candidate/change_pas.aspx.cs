using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVMS.candidate
{
    public partial class change_pas : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["en_no"] as String;
            Label4.Text = Session["en_no"] as String;
            sqlcon.Open();
            string name = ("select name from candidate_data where en_no='" + TextBox1.Text + "'");
            SqlCommand cmd = new SqlCommand(name, sqlcon);
            SqlDataReader sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                Label1.Text = sdr["name"].ToString();
            }
            sqlcon.Close();



            sqlcon.Open();

            string password = ("select password from candidate_data  where en_no='" + TextBox1.Text + "'");
            SqlCommand cmd2 = new SqlCommand(password, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            while (sdrB.Read())
            {
                TextBox7.Text = sdrB["password"].ToString();
            }
            sqlcon.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextBox3.Text == TextBox7.Text)
            {
                if (TextBox6.Text == TextBox5.Text)
                {
                    SqlCommand sqlcmd = new SqlCommand("Update candidate_data set password='" + TextBox6.Text + "' where en_no='" + TextBox1.Text + "'", sqlcon);
                    sqlcon.Open();
                    sqlcmd.ExecuteNonQuery();

                    {

                        Label3.Text = "Password Changed Succesfully.";

                    }
                }
                else
                {
                    Label3.Text = "Confirmation Password Failed.";
                }
            }
            else
            {
                Label3.Text = "Incorrect Old Password.";
            }

            sqlcon.Close();

 
        }
    }
}