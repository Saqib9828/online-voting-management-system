﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace OVMS.candidate
{
    public partial class can_log : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            ValidateUser(TextBox1.Text.Trim(), TextBox2.Text.Trim());

        }
        private void ValidateUser(string p, string p_2)
        {


            SqlCommand sqlcmd = new SqlCommand("select * from candidate_data where en_no=@USERID and password=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@USERID", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["en_no"] = TextBox1.Text;
                Response.Redirect("~/candidate/can_home.aspx");



            }
            else
            {

                Label1.Text = "Please Enter correct Username and Passward";
            }
            sqlcon.Close();

        }

    }
}