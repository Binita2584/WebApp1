using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApp1
{
    //partial class is a class which spread across multiple file
    public partial class Firstpage:System.Web.UI.Page
    {
        protected TextBox txt1;
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(Page_Load);
            base.OnInit(e);
        }
        public void Page_Load(object sender, EventArgs e)
        {
            //check whether the req is new or postback req
            if (!IsPostBack)
                this.txt1.Text = "Enter your Name";
        }
        public void btn1_Click(object sender, EventArgs e)
        {
            this.txt1.Text = this.txt1.Text.ToUpper();

        }

    }
}