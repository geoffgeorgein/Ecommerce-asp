using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce2.Admin
{

    public partial class Edit_Category : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          

            string ins = "Insert into Category_tab values('" + TextBox1.Text +  "','" + TextBox5.Text +  "','" + TextBox4.Text +  "')";

            int i = objcls.Fun_Non_Query(ins);

            if (i == 1)
            {
                Label1.Text = "inserted";
            }
        }
    }
}