using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InfowayEventManager.Dal;
using InfowayEventManager.Employee;

namespace InfowayEventManager.Employee
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            EmployeeBean emp = new EmployeeBean();
            InfowayEventDal dal = new InfowayEventDal();
            emp.emp_id = int.Parse(eid.Text) ;
            emp.emp_name = ename.Text;
            emp.dept_id = int.Parse(deptid.Text);
            emp.city = ecity.Text;
            emp.email = email.Text;
            emp.phone = phno.Text;
            emp.dob = DateTime.Parse(dob.Text);
            emp.doj = DateTime.Parse(doj.Text);
            emp.role = rolename.Text;
            emp.pwd = pwd.Text;

           int status1 =  dal.insertEmployee(emp);
           int status2 = dal.insertCredential(emp);

        }
    }
}