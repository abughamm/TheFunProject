﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class grafftiBlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["DisciplineType"] = "Graffti"; 
    }
    protected void AddPost_Click(object sender, EventArgs e)
    {
        Response.Redirect("blog.aspx");
    }
}