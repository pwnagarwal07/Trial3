﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using DAOLIbrary;

namespace WebApplication13
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loan_Request.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("check.aspx");
        }
    }
}