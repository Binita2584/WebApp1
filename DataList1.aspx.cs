using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp1.Models;

namespace WebApp1
{
    public partial class DataList1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateData();
            }
        }

        private void PopulateData()
        {
            CustomerDataaccess dataAccess = new CustomerDataaccess();
            var list = dataAccess.GetCustomers();
            dataLikst1.DataSource = list;
            dataLikst1.DataBind();
        }

       

        protected void dataLikst1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            if(e.CommandName=="View")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + id);
            }
        }

     

    protected void dataLikst1_EditCommand(object source, DataListCommandEventArgs e)
        {
            dataLikst1.EditItemIndex = e.Item.ItemIndex;
            PopulateData();
        }

        protected void dataLikst1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            string custId = dataLikst1.DataKeys[e.Item.ItemIndex].ToString();
            string Company = ((TextBox)e.Item.FindControl("txtCompany")).Text;
            Response.Write("Compant:" + Company);
            dataLikst1.EditItemIndex = -1;
            PopulateData();

            string Contact = ((TextBox)e.Item.FindControl("txtContact")).Text;
            //Response.Write("Contact:" + Contact);
            

            string city = ((TextBox)e.Item.FindControl("txtCity")).Text;
            //Response.Write("City:" + city);


            string country = ((TextBox)e.Item.FindControl("txtCountry")).Text;
            Response.Write("Country:" + country);

            Customer obj = new Customer
            {
                CustomerId = custId,
                CompanyName = Company,
                ContactName = Contact,
                City = city,
                Country = country
            };
            try
            {
                CustomerDataaccess dataAccess = new CustomerDataaccess();
                dataAccess.UpdateCustomer(obj);
            }catch(Exception ex)
            {
                throw ex;
            }

        }

        protected void dataLikst1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            dataLikst1.EditItemIndex = -1;
            PopulateData();
        } 

        protected void dataLikst1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            dataLikst1.EditItemIndex = -1;
            PopulateData();
        }
    }
}