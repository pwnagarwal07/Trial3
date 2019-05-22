using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAOLIbrary
{
     public class DAOLoan_Request
    {
            
        MyConnection myCon;
        SqlConnection sqlCon;

        public DAOLoan_Request()
        {
            sqlCon = new SqlConnection();
            myCon = new MyConnection();
        }
        public SqlCommand GetEmail(string Name)
        {
            sqlCon = myCon.getConnection();
            sqlCon.Open();
            string query1 = "select Email_Id from Users where U_Id=@uid";
            SqlCommand cmd = new SqlCommand(query1, sqlCon);
            cmd.Parameters.AddWithValue("@uid", Name);
            return cmd;
        }
        public SqlCommand GetLoan_Details(string s1,int n1,string s3,string s4)
        {

            sqlCon = myCon.getConnection();
            sqlCon.Open();
            string query2 = "insert into Loan_Request (Requested_For,Assinged_To,Requested_Amount,RequestStatus,Loan_Description,Email_Id) values(@Requested_For,@Assinged_To,@Requested_Amount,@RequestStatus,@Loan_Description,@Email_Id)";
            SqlCommand cmd = new SqlCommand(query2, sqlCon);
            cmd.Parameters.AddWithValue("@Requested_For", s1);
            cmd.Parameters.AddWithValue("@Assinged_To ", 2);
            cmd.Parameters.AddWithValue("@Requested_Amount", n1);
            cmd.Parameters.AddWithValue("@RequestStatus", "Reqst");
            cmd.Parameters.AddWithValue("@Loan_Description", s3);
            cmd.Parameters.AddWithValue("@Email_Id", s4);
            return cmd;
        }
    }
}
