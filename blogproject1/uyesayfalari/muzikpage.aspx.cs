﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.uyesayfalari
{
    public partial class muzikpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.blog1TableAdapter kt = new DataSet1TableAdapters.blog1TableAdapter();
            Repeater1.DataSource = kt.blogTypeID4();
            Repeater1.DataBind();
        }
    }
}