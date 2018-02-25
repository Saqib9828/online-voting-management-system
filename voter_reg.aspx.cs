using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OVMS
{
    public partial class voter_reg : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into voter_data(name,en_no,father_name,mother_name,qulification,age,gender,p_add,t_add,contact_no,password,email) values('" + TextBoxNAME.Text + "','" + TextBoxENROLL.Text + "','" + TextBoxFATHER.Text + "','" + TextBoxMOTHER.Text + "','" + DropDownListQUALIFICATION.Text + "','" + TextBoxAGE.Text + "','" + DropDownListQUALIFICATION0.Text + "','" + TextBoxADDRES.Text + "','" + TextBoxADDRES0.Text + "','" + TextBoxCONTACT.Text + "','" + TextBoxPASSWARD.Text + "','" + TextBoxEMAIL.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Your Registration successful.";

            }

            sqlcon.Close();
        }
    }
}