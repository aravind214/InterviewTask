using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LybraryWebApp
{
    public partial class Adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Go Button event
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getMemberById();
        }
        //Active Button event
        protected void lbtnActive_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Active");
        }
        //Pending button event
        protected void LbtnPending_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
        }
        //Deactive button event
        protected void LbtnDeactive_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Deactive");
        }
        //Delete button event
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteExistingMemberPermenently();
        }
        //user defined function

        public void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + txtMemId.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtFullName.Text= dr.GetValue(0).ToString();
                        txtAcStatus.Text = dr.GetValue(10).ToString();
                        txtDOB.Text = dr.GetValue(1).ToString();
                        txtContactNum.Text = dr.GetValue(2).ToString();
                        txtEmailID.Text = dr.GetValue(3).ToString();
                        txtState.Text = dr.GetValue(4).ToString();
                        txtCity.Text = dr.GetValue(5).ToString();
                        txtPincode.Text = dr.GetValue(6).ToString();
                        txtFullAddress.Text = dr.GetValue(7).ToString();

                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid User Credentials')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
        public void updateMemberStatusByID(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='"+ status +"' where member_id='" + txtMemId.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Member Status Updated')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
        public void deleteExistingMemberPermenently()
        {
            if (txtMemId.Text.Trim()=="")
            {
                Response.Write("<script>alert('Member Can't be blank :)')</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl  WHERE member_id='" + txtMemId.Text.Trim() + "'", con);
                    //cmd.Parameters.AddWithValue("@author_id", txtAuthorId.Text.Trim());
                    //cmd.Parameters.AddWithValue("@author_name", txtAuthorName.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Permenently Deleted Successfully :)')</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            
        }
        public void clearForm()
        {
            txtMemId.Text = "";
            txtFullName.Text = "";
            txtPincode.Text = "";
            txtState.Text = "";
            txtEmailID.Text = "";
            txtDOB.Text = "";
            txtContactNum.Text = "";
            txtCity.Text = "";
            txtAcStatus.Text = "";
            txtFullAddress.Text = "";
        }
    }
}