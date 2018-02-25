using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OVMS.admin
{
    public partial class reg_can : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into candidate_data(name,en_no,father_name,mother_name,qulification,age,gender,p_add,t_add,contact_no,password,email,post) values('" + TextBoxNAME.Text + "','" + TextBox2ENROLLNO.Text + "','" + TextBoxFATHERNAME.Text + "','" + TextBoxMOTHERNAME.Text + "','" + DropDownListQUALIFICATION.Text + "','" + TextBoxAGE.Text + "','" + DropDownListGENDER.Text + "','" + TextBoxPERMANENTADRESS.Text + "','" + TextBoxTEMPORARYADRESS.Text + "','" + TextBoxCONTACTNUMBER.Text + "','" + TextBoxPASSWARD.Text + "','" + TextBoxEMAILID.Text + "','"+DropDownList1.Text+"')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Your Registration successful.";

            }

            sqlcon.Close();
        
        }
    }
}