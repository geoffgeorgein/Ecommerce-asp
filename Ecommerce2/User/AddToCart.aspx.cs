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
    public partial class AddToCart : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();

            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("pimage");
            dt.Columns.Add("pprice");
            dt.Columns.Add("pquantity");
            dt.Columns.Add("ptotalprice");
            DataRow dr;

      
            
             //Session["Total_Price"] = 0;
            

          
                


            if (!IsPostBack)
            {

                Session["Addproduct"] = "false";


                

                if (Request.QueryString["id"] != null)
                {

                    if (Session["buyitems"] == null)
                    {
                        string s = "Select * from Product_Tab3 where Id=" + Request.QueryString["id"];
                        //string s2 = "Select * from Product_Tab3";
                        dr = dt.NewRow();
                        DataSet ds = ob.Fun_DataAdapter(s);





                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["Id"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Name"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Prod_price"].ToString();
                        //dr["pquantity"] = Request.QueryString["quantity"];

                        dr["pquantity"] = 4;




                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Prod_price"].ToString());
                        //int Quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());

                        int TotalPrice = price * 2;
                        dr["ptotalprice"] = TotalPrice;

                        Session["Total_Price"] = TotalPrice;


                        dt.Rows.Add(dr);

                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                        Response.Redirect("AddToCart.aspx");
                    }

                    else
                    {

                        dt = (DataTable)Session["buyitems"];

                        int sr;
                        sr = dt.Rows.Count;

                        string s = "Select * from Product_Tab3 where Id=" + Request.QueryString["id"];
                      
                        dr = dt.NewRow();
                        DataSet ds = ob.Fun_DataAdapter(s);

                        dr["sno"] = sr+1;
                        dr["pid"] = ds.Tables[0].Rows[0]["Id"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Name"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Prod_price"].ToString();
                        //dr["pquantity"] = Request.QueryString["quantity"];

                        dr["pquantity"] = 4;
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Prod_price"].ToString());
                        

                        int TotalPrice = price * 2;
                        dr["ptotalprice"] = TotalPrice;

                        if (TotalPrice > 0)
                        {
                            Session["Total_Price"] = TotalPrice;
                        }


                        dt.Rows.Add(dr);



                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;

                        Response.Redirect("AddToCart.aspx");



                    }



                    //GridView2.DataBind();

                    //Response.Redirect("AddToCart.aspx");


                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
                



            }

            string OrderDate = DateTime.Now.ToShortDateString();

            Session["Orderdate"] = OrderDate;

            Guid gid = Guid.NewGuid();
            Session["OrderId"] = gid;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

       
    }
}