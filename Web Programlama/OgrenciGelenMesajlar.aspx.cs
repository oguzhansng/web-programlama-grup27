﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programlama
{
    public partial class OgrenciGelen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            Repeater1.DataSource = dt.OgrenciGelenKutusu1(Session["Numara"].ToString());
            Repeater1.DataBind();
        }
    }
}