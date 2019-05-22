using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAOLIbrary
{
   public  class DAOClassUser
    {
        MyConnection myCon;
        SqlConnection sqlCon;
        public DAOClassUser()
        {
            sqlCon = new SqlConnection();
            myCon = new MyConnection();
        }
        public  DataSet check(string input)
        {
           
            sqlCon = myCon.getConnection();
            sqlCon.Open();
            String query1 = "select l.Requested_Amount,u.Roles,l.L_Id ,l.Loan_Description ,l.RequestStatus  from Loan_Request l, Users u where u.u_Id=l.Assinged_To AND l.Email_Id =@Empid";
            SqlCommand cmd = new SqlCommand(query1, sqlCon);
            cmd.Parameters.AddWithValue("@Empid", input);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
           sd.Fill(ds);
            return ds;
        }
        public SqlCommand SignUpUser(string s1, string s2,string s3,string s4,string s5)
        {
            sqlCon = myCon.getConnection();
            sqlCon.Open();
            string query1 = "insert into Users (Email_Id,Passwrd,Names,Phoneno,Addres,Roles) values(@Eid,@Pass,@Name,@phone,@addres,@Roles)";

            SqlCommand cmd = new SqlCommand(query1, sqlCon);
            cmd.Parameters.AddWithValue("@Eid", s1);
            cmd.Parameters.AddWithValue("@Pass", s2);
            cmd.Parameters.AddWithValue("@Name", s3);
            cmd.Parameters.AddWithValue("@phone", s4);
            cmd.Parameters.AddWithValue("@addres", s5);
            cmd.Parameters.AddWithValue("@Roles", "User");
            return cmd;
        }
        public SqlCommand LoginUser(string s1,string s2)
        {

            sqlCon = myCon.getConnection();
            sqlCon.Open();
            string query1 = "select * from Users where Email_Id=@Email and Passwrd=@pass";
            SqlCommand cmd = new SqlCommand(query1, sqlCon);
            cmd.Parameters.AddWithValue("@Email", s1);
            cmd.Parameters.AddWithValue("@pass", s2);
            return cmd;
        }
        public DataSet DashBoardDetails(string name1)
        {
            sqlCon = myCon.getConnection();
            sqlCon.Open();
            string query2 = "select l.Requested_Amount,u.Roles,l.L_Id ,l.Loan_Description ,l.RequestStatus  from Loan_Request l, Users u where u.u_Id=l.Assinged_To AND l.Requested_For =" + name1;
            SqlCommand cmd = new SqlCommand(query2, sqlCon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}
