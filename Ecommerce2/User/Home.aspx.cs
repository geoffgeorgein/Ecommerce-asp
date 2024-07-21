using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce2.User
{
    public partial class Home : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

            string str = "select * from Product_Tab3";

            //DataSet ds = ob.Fun_DataAdapter(str);

            //GridView1.DataSource = ds;
            //GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Select * from Product_Tab3 where(Name like '%" + TextBox1.Text + "%')";
            {
                DataSet ds = ob.Fun_DataAdapter(s);

                DataTable dt = new DataTable();

                DataList1.DataSourceID = null;
                DataList1.DataSource = ds;

                DataList1.DataBind();


            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["Addproduct"] = "true";

            if (e.CommandName == "AddToCart")
            {
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString());

            }


            if (e.CommandName == "ViewPrdDetails")
            {
                Response.Redirect("PDetails.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "Select * from Product_Tab3 where(Category like '%" + DropDownList1.SelectedItem.Value + "%')";
            {
                DataSet ds = ob.Fun_DataAdapter(s);

                DataTable dt = new DataTable();

                DataList1.DataSourceID = null;
                DataList1.DataSource = ds;

                DataList1.DataBind();


            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string s = "Select * from Product_Tab3 where(Category like '%" + DropDownList1.SelectedItem.Value + "%')";
            {
                DataSet ds = ob.Fun_DataAdapter(s);

                DataTable dt = new DataTable();

                DataList1.DataSourceID = null;
                DataList1.DataSource = ds;

                DataList1.DataBind();


            }
        }
    }
}