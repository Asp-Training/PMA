﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectManagementProject
{
    public partial class ViewProjectDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id= Request.QueryString["Id"].ToString();
                SqlDataSource1.SelectCommand = string.Format("SELECT * FROM [ProjectCreation] WHERE Id= {0}", id);
                SqlDataSource1.DataBind();
               
            }
            catch (Exception ex)
            {
                Response.Redirect("ViewProjectsaspx.aspx");
            }



        }
    }
}