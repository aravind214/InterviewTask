using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LybraryWebApp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(" "))
                {
                    lkbtnUserLogin.Visible = true; // User login linkbutton
                    lkbtnSignUp.Visible = true; // signup linkbutton

                    lkbtnLogout.Visible = false; // logout linkbutton
                    lkbtnHelloUser.Visible = false; // hello user linkbutton

                    lkbtnAdminLogin.Visible = true; // Admin login linkbutton
                    lkbtnAuthorManagement.Visible = false; // author management linkbutton
                    lkbtnPublisherManagement.Visible = false; // publisher management linkbutton
                    lkbtnBookInventory.Visible = false; // Book inventory linkbutton
                    lkbtnBookIssuing.Visible = false; // Book issuing linkbutton
                    lkbtnMemberManagement.Visible = false; // member management linkbutton
                }
                else if (Session["role"].Equals("User"))
                {
                    lkbtnUserLogin.Visible = false; // User login linkbutton
                    lkbtnSignUp.Visible = false; // signup linkbutton

                    lkbtnLogout.Visible = true; // logout linkbutton
                    lkbtnHelloUser.Visible = true; // hello user linkbutton
                    lkbtnHelloUser.Text = "Hello " + Session["username"].ToString();

                    lkbtnAdminLogin.Visible = true; // Admin login linkbutton
                    lkbtnAuthorManagement.Visible = false; // author management linkbutton
                    lkbtnPublisherManagement.Visible = false; // publisher management linkbutton
                    lkbtnBookInventory.Visible = false; // Book inventory linkbutton
                    lkbtnBookIssuing.Visible = false; // Book issuing linkbutton
                    lkbtnMemberManagement.Visible = false; // member management linkbutton
                }
                else if (Session["role"].Equals("admin"))
                {
                    lkbtnUserLogin.Visible = false; // User login linkbutton
                    lkbtnSignUp.Visible = false; // signup linkbutton

                    lkbtnLogout.Visible = true; // logout linkbutton
                    lkbtnHelloUser.Visible = true; // hello user linkbutton
                    lkbtnHelloUser.Text = "Hello Admin ";

                    lkbtnAdminLogin.Visible = false; // Admin login linkbutton
                    lkbtnAuthorManagement.Visible = true; // author management linkbutton
                    lkbtnPublisherManagement.Visible = true; // publisher management linkbutton
                    lkbtnBookInventory.Visible = true; // Book inventory linkbutton
                    lkbtnBookIssuing.Visible = true; // Book issuing linkbutton
                    lkbtnMemberManagement.Visible = true; // member management linkbutton
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void lkbtnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void lkbtnAuthorManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminauthormanagement.aspx");
        }

        protected void lkbtnPublisherManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminpublishermanagement.aspx");
        }

        protected void lkbtnBookInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookinventory.aspx");
        }

        protected void lkbtnBookIssuing_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookissuing.aspx");
        }

        protected void lkbtnMemberManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmembermanagement.aspx");
        }

        protected void lkbtnUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void lkbtnViewBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void lkbtnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void lkbtnLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            lkbtnUserLogin.Visible = true; // User login linkbutton
            lkbtnSignUp.Visible = true; // signup linkbutton

            lkbtnLogout.Visible = false; // logout linkbutton
            lkbtnHelloUser.Visible = false; // hello user linkbutton

            lkbtnAdminLogin.Visible = true; // Admin login linkbutton
            lkbtnAuthorManagement.Visible = false; // author management linkbutton
            lkbtnPublisherManagement.Visible = false; // publisher management linkbutton
            lkbtnBookInventory.Visible = false; // Book inventory linkbutton
            lkbtnBookIssuing.Visible = false; // Book issuing linkbutton
            lkbtnMemberManagement.Visible = false; // member management linkbutton
        }
    }
}