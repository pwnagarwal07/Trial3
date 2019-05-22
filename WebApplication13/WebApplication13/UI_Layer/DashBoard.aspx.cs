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
    public partial class DashBoard : System.Web.UI.Page
    {
        string Name = null;
        string name1 = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                name1 = Session["userid"].ToString();
                Console.WriteLine(name1);

            }
            catch(Exception es)
            {
                Console.WriteLine(es.Message);
            }

            DAOClassUser n = new DAOClassUser();
            DataSet ds = n.DashBoardDetails(name1);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Application["User_Id"] != null)
            {
                Name = Application["User_Id"].ToString();
                Response.Write(Name);
            }
            Application["User_Id"] = Name;
            Response.Redirect("Loan_Request.aspx");
        }
    }
}