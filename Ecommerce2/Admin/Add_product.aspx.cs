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
    public partial class Add_product : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select Distinct Prod_status from Product_Tab3";

            DataSet ds = objcls.Fun_DataAdapter(s);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Prod_status";
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/User/images/" + FileUpload1.FileName;


            FileUpload1.SaveAs(MapPath(p));

            string s = FileUpload1.FileName;
            string ins = "Insert into Product_Tab3 values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "')";

            int i = objcls.Fun_Non_Query(ins);
            
            if (i == 1)
            {
                Label1.Text = "inserted";
            }
        }
    }
}
//C: \Users\geoff\source\repos\Ecommerce2\Ecommerce2\images\1626582806942.jfif