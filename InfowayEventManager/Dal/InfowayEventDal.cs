using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

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