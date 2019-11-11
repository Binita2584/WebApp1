using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class CreateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductManagement.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductManagement.aspx");
        }
    }
}