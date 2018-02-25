using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OVMS.candidate
{
    public partial class view_res : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList1.Text == "President")
            {

                sqlcon.Open();
                string candidate = ("SELECT candidate FROM pre_vote GROUP BY  candidate ORDER BY COUNT(*) ASC");

                SqlCommand cmdl = new SqlCommand(candidate, sqlcon);
                SqlDataReader sdrl = cmdl.ExecuteReader();

                while (sdrl.Read())
                {
                    Label2.Text = sdrl["candidate"].ToString();
                }
                sqlcon.Close();

            }
            else
                if (DropDownList1.Text == "Vice-President")
                {
                    sqlcon.Open();
                    string candidate = ("SELECT candidate FROM vp_vote GROUP BY  candidate ORDER BY COUNT(*) ASC");

                    SqlCommand cmdl = new SqlCommand(candidate, sqlcon);
                    SqlDataReader sdrl = cmdl.ExecuteReader();

                    while (sdrl.Read())
                    {
                        Label2.Text = sdrl["candidate"].ToString();
                    }
                    sqlcon.Close();

                }
                else
                    if (DropDownList1.Text == "Secretry")
                    {
                        sqlcon.Open();
                        string candidate = ("SELECT candidate FROM secretry_vote GROUP BY  candidate ORDER BY COUNT(*) ASC");

                        SqlCommand cmdl = new SqlCommand(candidate, sqlcon);
                        SqlDataReader sdrl = cmdl.ExecuteReader();

                        while (sdrl.Read())
                        {
                            Label2.Text = sdrl["candidate"].ToString();
                        }
                        sqlcon.Close();


                    }
        
        }
    }
}