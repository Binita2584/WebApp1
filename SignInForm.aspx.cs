﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class SignInForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //if(FormsAuthentication.Authenticate(Login1.UserName,Login1.Password))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           
    
if(string.IsNullOrEmpty(txtUser.Text) ||
               string.IsNullOrEmpty(txtPwd.Text) ||
               string.IsNullOrEmpty(txtEmail.Text) ||
               string.IsNullOrEmpty(txtQuestion.Text) ||
               string.IsNullOrEmpty(txtAnswer.Text)
                )
            {
                pnlErrors.Visible = true;
                litErrors.Text = "values has not been specified for one or more fields.";


            }
            else
            {
                pnlErrors.Visible = false;
                MembershipCreateStatus status = MembershipCreateStatus.ProviderError;
    var user = Membership.CreateUser(
        username: txtUser.Text,
        password: txtPwd.Text,
        email: txtEmail.Text,
        passwordQuestion: txtQuestion.Text,
        passwordAnswer: txtAnswer.Text,
        isApproved: true,
        status: out status);
                    if(status != MembershipCreateStatus.Success)
                    {
                       pnlErrors.Visible = true;
                    litErrors.Text = "Failed while creating a new user.";
                    }
            }





        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
   
     pnlErrors.Visible = false;
            txtUser.Text = txtPwd.Text = txtConfirm.Text = txtEmail.Text
                = txtQuestion.Text = txtAnswer.Text = string.Empty;

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
    
     if(Membership.ValidateUser(txtUser.Text, txtPassword.Text))
            {
                Session["user"] = txtUserId;
                FormsAuthentication.RedirectFromLoginPage(txtUserId.Text, false);
            }

        }
    }
}