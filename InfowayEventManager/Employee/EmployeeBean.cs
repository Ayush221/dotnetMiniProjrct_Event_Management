using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InfowayEventManager.Employee
{
    public class EmployeeBean
    {
        public int emp_id { get; set; }

        public string emp_name { get; set; }
        public int dept_id { get; set; }

        public string city { get; set; }

        public string email { get; set; }

        public string phone { get; set; }

        public string e_event { get; set; }

        public DateTime dob { get; set; }

        public DateTime doj { get; set; }

        public int role_id { get; set; }

        public string pwd { get; set; }

        public string role { get; set; }
    }
}