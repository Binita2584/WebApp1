using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApp1.Models
{
    public class CustomerDataaccess
    {
        string connectionstring = string.Empty;
        SqlConnection connection;
        private readonly object reader;

        public CustomerDataaccess()
        {
            var constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
            connectionstring = constr;
            connection = new SqlConnection(connectionstring);

        }
            public List<Customer> GetCustomers()
            {
                List<Customer> CustomerList = new List<Customer>();
                string sql = "SELECT CustomerID, CompanyName,ContactName,City,Country FROM Customers";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = null;
                try
                {
                    connection.Open();
                    reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                    while(reader.Read())
                    {
                        Customer obj = new Customer
                        {
                            CustomerId = reader.GetString(0),
                            CompanyName = reader.GetString(1),
                            ContactName = reader.GetString(2),
                            City = reader.GetString(3),
                            Country = reader.GetString(4)
                        };
                        CustomerList.Add(obj);
                    }
                }
                catch (SqlException)
                {
                    throw;
            }
            catch (Exception)
            {
                throw;
            }
                finally
                {
                    if (reader != null) if (!reader.IsClosed) reader.Close();
                    if (connection.State != System.Data.ConnectionState.Closed) connection.Close();
                connection = null;
                }
            return CustomerList;
            }
        public void UpdateCustomer(Customer item)
        {
            if (item == null)
                throw new ArgumentNullException(nameof(item), "Value is null");
            string sql = " update Customers set CompanyName=@company, " +
                " ContactName=@contact, City=@city, Country=@country " +
                " where CustomerId=@customerId ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@company", item.CompanyName);
            command.Parameters.AddWithValue("@contact", item.ContactName);
            command.Parameters.AddWithValue("@city", item.City);
            command.Parameters.AddWithValue("@country", item.Country);
            command.Parameters.AddWithValue("@customerId", item.CustomerId);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
               // if (reader != null) if (!reader.IsClosed) reader.Close();
                if (connection.State != System.Data.ConnectionState.Closed) connection.Close();
                connection = null;
            }
         
        }
    }
        }
    
