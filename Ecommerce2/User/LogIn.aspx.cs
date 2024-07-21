using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce2.User
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

            if (cid == "1")
            {
                //  Session["uid"] = id;
                string strslid = "select Id from Login_tab where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
                //Label1.Text = "Selected";

                string id = objCls.Fun_Scalar(strslid);
                Session["uid"] = id;

                Response.Redirect("WebForm1.aspx");
            }
        }
    }
    
}