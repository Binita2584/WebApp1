using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp1.Models;

namespace WebApp1
{
    public partial class RepeaterExmp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }
        //string connectionString = "server=VINDHYA\\SQLDEV2016;Integrated Security=True;Initial Catalog=Northwind";
        //string sql = "SELECT CustomerId,CompanyName,ContactName,City,Country from Customers";
        //DataSet ds;
        //SqlDataAdapter adapter;
        //string tableName = "Customers";


        private void PopulateData()
        {
            //if (adapter == null)
            //    adapter = new SqlDataAdapter(sql, connectionString);
            //if (ds == null) ds = new DataSet();
            //adapter.Fill(ds, tableName);
            //this.repeater2.DataSource = ds;
            //repeater2.DataMember = tableName;
            //repeater2.DataBind();
            CustomerDataaccess dataaccess = new CustomerDataaccess();
            var list = dataaccess.GetCustomers();
            repeater2.DataSource = list;
            repeater2.DataBind();

        }

        protected void repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string custId = e.CommandArgument.ToString();
            if (e.CommandName == "View")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + custId);
            }
        }
    }
}
    
