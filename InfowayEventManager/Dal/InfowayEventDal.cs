using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using InfowayEventManager.Employee;

namespace InfowayEventManager.Dal
{
    public class InfowayEventDal
    {

        public DataTable getEventsList(int id)
        {
            
            DataTable eventsTable = new DataTable("Events");
            using (MySqlConnection CN = new MySqlConnection(
                ConfigurationManager.ConnectionStrings["IEMConStr"].ConnectionString))
            {
                Console.WriteLine(id);
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getEventdetail";
                CMD.Parameters.AddWithValue("event_id", id);
                MySqlDataReader DR = CMD.ExecuteReader();
                eventsTable.Load(DR);
                DR.Close();
                CN.Close();
            }


           
            return eventsTable;
        }
        public int insertEmployee(EmployeeBean emp)
        {
            int status = 0;
            DataTable eventsTable = new DataTable("Events");
            using (MySqlConnection CN = new MySqlConnection(
                ConfigurationManager.ConnectionStrings["IEMConStr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "insertEmployee";
                CMD.Parameters.AddWithValue("p_employeeID", emp.emp_id);
                CMD.Parameters.AddWithValue("p_ename", emp.emp_name);
                CMD.Parameters.AddWithValue("p_deptID", emp.dept_id);
                CMD.Parameters.AddWithValue("p_city", emp.city);
                CMD.Parameters.AddWithValue("p_email", emp.email);
                CMD.Parameters.AddWithValue("p_phone", emp.phone);
                CMD.Parameters.AddWithValue("p_dob", emp.dob);
                CMD.Parameters.AddWithValue("p_doj", emp.doj);
                CMD.Parameters.AddWithValue("p_roleid", emp.role_id);

                status = CMD.ExecuteNonQuery();
               
                CN.Close();
            }
            return status;
        }
            public int insertCredential(EmployeeBean emp1)
            {
            int status = 0;
                DataTable eventsTable = new DataTable("Events");
                using (MySqlConnection CN = new MySqlConnection(
                    ConfigurationManager.ConnectionStrings["IEMConStr"].ConnectionString))
                {
                    CN.Open();
                    MySqlCommand CMD = new MySqlCommand();
                    CMD.Connection = CN;
                    CMD.CommandType = CommandType.StoredProcedure;
                    CMD.CommandText = "insertCredential";
                   
                    CMD.Parameters.AddWithValue("p_empid", emp1.emp_id);
                    CMD.Parameters.AddWithValue("p_email", emp1.email);
                    CMD.Parameters.AddWithValue("p_pwd", emp1.pwd);
                    CMD.Parameters.AddWithValue("p_role", emp1.role);

                 status = CMD.ExecuteNonQuery();
                  
                    CN.Close();
                }
            return status;
        }



        public DataTable getAllEvents()
        {
            DataTable eventsTable = new DataTable("Events");
            using (MySqlConnection CN = new MySqlConnection(
                ConfigurationManager.ConnectionStrings["IEMConStr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getEventsList";
                MySqlDataReader DR = CMD.ExecuteReader();
                eventsTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return eventsTable;
        }



    }
    
}