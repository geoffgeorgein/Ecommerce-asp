using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Ecommerce2.Admin
{
    public partial class LogIn : System.Web.UI.Page
    {

        Class1 objCls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s = "select count(Id) from Login_tab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";

            string cid = objCls.Fun_Scalar(s);

            string str2 = "select Log_Type from Login_tab where Username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";

            string logtype = objCls.Fun_Scalar(str2);

            if (cid == "1")
            {
                //  Session["uid"] = id;
                string strslid = "select Id from Login_tab where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
                //Label1.Text = "Selected";

                string id = objCls.Fun_Scalar(strslid);
                Session["uid"] = id;


                if(logtype == "Admin")
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label1.Text = "Incorrect credentials";
                }
               
            }

               
            }
           

        }
    }
