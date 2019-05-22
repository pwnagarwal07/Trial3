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
    public partial class Loan_Details1 : System.Web.UI.Page
    {
        string Name;
        
        protected void Page_Load(object sender, EventArgs e)
        {     
            if (Session["userid"] != null)
            {
                Name = Session["userid"].ToString();
                if (Session["userid"] != null)
                {
                    Name = Session["userid"].ToString();
                }

                TextBox1.Text = Name;
            }



            DAOLoan_Request l = new DAOLoan_Request();
            SqlCommand cmd = l.GetEmail(Name);
                try
                {
                    Console.WriteLine("hello");
                    TextBox4.Text = (string)cmd.ExecuteScalar();
                    //con1.Close();
                }
                catch (SqlException se)
                {
                    Console.WriteLine(se.Message);
                }
            }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAOLoan_Request l = new DAOLoan_Request();
            SqlCommand cmd = l.GetLoan_Details(TextBox1.Text,int.Parse(TextBox2.Text),TextBox3.Text,TextBox4.Text);
            try
            {
                cmd.ExecuteNonQuery();
               Session["userid"] = Name;
                Response.Redirect("DashBoard.aspx");
            }
            catch(SqlException se)
            {
                Console.WriteLine(se.Message);
            }
        }
    }
}