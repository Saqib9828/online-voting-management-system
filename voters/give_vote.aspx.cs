using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OVMS.voters
{
    public partial class give_vote : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Desktop\OVMS\OVMS\App_Data\ovms.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["en_no"] as String;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "President")
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("select voter_en_no from pre_vote where voter_en_no='" + TextBox1.Text + "'", sqlcon);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Label1.Visible = false;
                    Label3.Visible = false;
                    Button1.Visible = false;
                    DropDownList1.Visible = false;
                    Label2.Visible = true;
                    Label2.Text = "You Have already voted for president. Go back and select another post.";

                }
                else
                {
                    Label1.Text = "Step-II";
                    Label3.Visible = false;
                    Button1.Visible = false;
                    DropDownList1.Visible = false;
                    Label4.Visible = true;
                    DropDownList2.Visible = true;
                    Button2.Visible = true;

                }
                sqlcon.Close();
            }
            else
                if (DropDownList1.Text == "Vice-President")
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("select voter_en_no from vp_vote where voter_en_no='" + TextBox1.Text + "'", sqlcon);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        Label1.Visible = false;
                        Label3.Visible = false;
                        Button1.Visible = false;
                        DropDownList1.Visible = false;
                        Label2.Visible = true;
                        Label2.Text = "You Have already voted for vice-president. Go back and select another post.";

                    }
                    else
                    {
                        Label1.Text = "Step-II";
                        Label3.Visible = false;
                        Button1.Visible = false;
                        DropDownList1.Visible = false;
                        Label4.Visible = true;
                        DropDownList2.Visible = true;
                        Button2.Visible = true;


                    }
                    sqlcon.Close();
                }
            else
                    if (DropDownList1.Text == "Secretry")
                    {
                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand("select voter_en_no from secretry_vote where voter_en_no='" + TextBox1.Text + "'", sqlcon);
                        SqlDataReader dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {
                            Label1.Visible = false;
                            Label3.Visible = false;
                            Button1.Visible = false;
                            DropDownList1.Visible = false;
                            Label2.Visible = true;
                            Label2.Text = "You Have already voted for Secretry. Go back and select another post.";

                        }
                        else
                        {
                            Label1.Text = "Step-II";
                            Label3.Visible = false;
                            Button1.Visible = false;
                            DropDownList1.Visible = false;
                            Label4.Visible = true;
                            DropDownList2.Visible = true;
                            Button2.Visible = true;


                        }
                        sqlcon.Close();
                    }
                    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "President")
            {

                SqlCommand sqlcmd = new SqlCommand("insert into pre_vote(voter_en_no,candidate) values('" + TextBox1.Text + "','" + DropDownList2.Text + "')", sqlcon);
                sqlcon.Open();
                sqlcmd.ExecuteNonQuery();

                {
                    Label4.Visible = false;
                    DropDownList2.Visible = false;
                    Button2.Visible = false;
                    Label5.Visible = true;
                    Label5.Text = "You have voted successfully. Thank You!";

                }

                sqlcon.Close();

            }
            else
                if (DropDownList1.Text == "Vice-President")
                {

                    SqlCommand sqlcmd = new SqlCommand("insert into vp_vote(voter_en_no,candidate) values('" + TextBox1.Text + "','" + DropDownList2.Text + "')", sqlcon);
                    sqlcon.Open();
                    sqlcmd.ExecuteNonQuery();

                    {
                        Label4.Visible = false;
                        DropDownList2.Visible = false;
                        Button2.Visible = false;
                        Label5.Visible = true;
                        Label5.Text = "You have voted successfully. Thank You!";

                    }

                    sqlcon.Close();

                }
            else
                    if (DropDownList1.Text == "Secretry")
                    {

                        SqlCommand sqlcmd = new SqlCommand("insert into secretry_vote(voter_en_no,candidate) values('" + TextBox1.Text + "','" + DropDownList2.Text + "')", sqlcon);
                        sqlcon.Open();
                        sqlcmd.ExecuteNonQuery();

                        {
                            Label4.Visible = false;
                            DropDownList2.Visible = false;
                            Button2.Visible = false;
                            Label5.Visible = true;
                            Label5.Text = "You have voted successfully. Thank You!";

                        }

                        sqlcon.Close();

                    }
        }
    }
}