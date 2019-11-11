using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp1.Models;

namespace WebApp1
{
    public partial class ProductManagement : System.Web.UI.Page
    {
#region Private Helper
        private void InitializePage()
        {
            txtSearch.Text = string.Empty;
            FetchProductData();
        }
        private void FetchProductData()
        {
            if (Cache["productList"] == null)//hashtable
            {
                try
                {
                    ProductProcess process = new ProductProcess();
                    var list = process.GetProducts(txtSearch.Text);
                    this.grid1.DataSource = list;
                    this.grid1.DataBind();
                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                var list = Cache["productList"] as List<Product>;
                this.grid1.DataSource = list;
                this.grid1.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializePage();
            }
        }
#endregion

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProduct.aspx");
        }

       
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = string.Empty;
            FetchProductData();
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            FetchProductData();
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            FetchProductData();
        }

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = grid1.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("UpdateProduct.aspx?id=" + id);
        }
    }
}