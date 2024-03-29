﻿using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class Webcontrols1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> interestList = new List<string>
         {
             "Art","Automobile","Dance","Singing","Fashion"
         };
            //check request is new or postback
            if (!IsPostBack)//if not a postback
            {
                //do the assignment and invoke the methods
                //chkInterests.DataSource = interestList;
                //chkInterests.DataBind();//bind the string item to the list-item
                //Alternate way
                for (int i=0;i<interestList.Count;i++)
                {
                    chkInterests.Items.Add(interestList[i]);
                }
            }
        }
        protected void btnSave_Click(object sender ,EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<section class='alert' alert-info>");
            sb.AppendFormat("Hi,<b>{0}</b><br/>", txtName.Text)
                 .Append("Welcome to our site.You are located in br")
                .AppendFormat("<strong>{0}</strong>", ddlLocation.SelectedItem.ToString())
                    .Append("Welcome to our site.You are located br")
                        .AppendFormat("<address>{0}</address>", txtAddress.Text)
                        .Append("<br/>Your Interest are")
                .AppendFormat("<ul>");
            foreach (ListItem item in chkInterests.Items)
            {
                if (item.Selected)
                    sb.AppendFormat("<li>{0}</li>", item.Text);
            }
            sb.Append("</ul>");
            sb.Append("</section>");
           
            literal.Text = sb.ToString();
        }
    }
}