using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Model;
using DAOLIbrary;
namespace WebApplication13
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAOClassUser n = new DAOClassUser();
            SqlCommand cmd1 = n.SignUpUser(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
           
            try
            {
                cmd1.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

            }
            catch (SqlException se)
            {
                Console.WriteLine(se.Message);
            }
        }
    }
}