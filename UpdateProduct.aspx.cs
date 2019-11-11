using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp1.Models;

namespace WebApp1
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
       // #region Private helper methods
        private void InitializePage()
        {

        }
        private void PopulateCategories()
        {
            string connectionString = ConfigurationManager
               .ConnectionStrings["NorthwindConnectionString"]
               .ConnectionString;
            string sql = "SELECT CategoryId, CategoryName FROM Categories";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connectionString);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Categories");
            ddlCategories.DataSource = ds.Tables["Categories"];
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataValueField = "CategoryId";
            ddlCategories.DataBind();

        }
        private void AssignValuesToTextBoxes(Product model)
        {
            txtName.Text = model.ProductName;
            txtPrice.Text = model.UnitPrice.ToString();
            txtStock.Text = model.UnitInStock.ToString();
            chkDiscontinued.Checked = model.Discontinued;
            ddlCategories.SelectedValue = model.CategoryId.ToString();
        }
        private Product RetrievevaluesFromControls()
        {
            Product model = new Product();
            model.ProductName = txtName.Text;
            model.UnitPrice = Convert.ToDecimal("0" + txtPrice.Text);
            model.UnitInStock = Convert.ToInt16("0" + txtStock.Text);
            model.Discontinued = chkDiscontinued.Checked;
            model.CategoryId = Convert.ToInt32("0" + ddlCategories.SelectedValue);
            model.ProductId = Convert.ToInt32("0" + Request.QueryString["id"]);
            return model;

        }
        private void LoadProductDetails()
        {
            int productId = Convert.ToInt32("0" + Request.QueryString["id"]);
            if (productId != 0)
            {
                ProductProcess process = new ProductProcess();
                var item = process.GetProduct(productId);
                AssignValuesToTextBoxes(item);
            }
        }
        private void SaveProductDetails()
        {
            Product obj = RetrievevaluesFromControls();
            ProductProcess process = new ProductProcess();
            process.UpdateProduct(obj);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("SignInForm.aspx?ReturnUrl=" + Request.Url.PathAndQuery);
            }
            if (!IsPostBack)
            {
                InitializePage();
                PopulateCategories();
                LoadProductDetails();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SaveProductDetails();
            Cache.Remove("productList");
            //or
            //Cache["prductList"] = null;
            Response.Redirect("ProductManagement.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
          //  Response.Redirect("ProductManagement.aspx");
        }
    }
}