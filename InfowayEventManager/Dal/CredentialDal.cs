using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace InfowayEventManager.Dal
{
    public class CredentialDal
    {
        public DataTable checkCredential(String email, String password)
        {       
            DataTable credentialsTable = new DataTable("Events");
            using (MySqlConnection CN = new MySqlConnection(
                ConfigurationManager.ConnectionStrings["IEMConStr"].ConnectionString))
            {       
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "checkCredentials";
                CMD.Parameters.AddWithValue("p_email", email);
                CMD.Parameters.AddWithValue("p_password", password);
                MySqlDataReader DR = CMD.ExecuteReader();
                credentialsTable.Load(DR);
                DR.Close();
                CN.Close();
            }           
            return credentialsTable;
        }
    }
}