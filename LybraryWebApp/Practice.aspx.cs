using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LybraryWebApp
{
    
    public partial class Practice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=workspace;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // ddlState.SelectedIndex = -1;
                BindState();
            }
        }

        public void BindCity()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select City_Id, City_Name from City_Tbl where State_Id='" + ddlState.SelectedValue + "'", con); 
               SqlDataReader dr = cmd.ExecuteReader();
            ddlCity.DataSource = dr;
            ddlCity.Items.Clear(); 
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_Id";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, new ListItem(" Select "+ddlState.SelectedItem.Text.ToString()+" Cities ","0"));
            ddlCity.SelectedIndex = 0;
            con.Close();

        }
        public void BindState()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select State_Id, State_Name from State_Tbl", con);
            SqlDataReader dr = cmd.ExecuteReader();
            ddlState.DataSource = dr;
            ddlState.Items.Clear();
            //ddlState.Items.Insert(0, new ListItem("Please Select State"));
            ddlState.DataTextField = "State_Name";
            ddlState.DataValueField = "State_Id";
            ddlState.DataBind();
            ddlCity.Items.Insert(0, new ListItem("Please Select State","0"));
            ddlCity.SelectedIndex = 0;
            con.Close();

        }
        public void GridBind()
        {
            //GridView1.PageSize=Convert.ToInt32(ddlCity.SelectedValue)
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT State_Tbl.State_Name, City_Tbl.City_Name, Emp_Tbl.Emp_Name FROM State_Tbl INNER JOIN City_Tbl ON State_Tbl.State_Id = City_Tbl.State_Id INNER JOIN Emp_Tbl ON City_Tbl.City_Id = Emp_Tbl.City_Id WHERE City_Tbl.City_Name = '"+ddlCity.SelectedItem.Text+"' ORDER BY State_Tbl.State_Name, City_Tbl.City_Name, Emp_Tbl.Emp_Name", con);
            //SqlDataReader dr = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            
            GridView1.DataBind();
            con.Close();
        }

        protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BindCity();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridBind();
        }

       
    }
}