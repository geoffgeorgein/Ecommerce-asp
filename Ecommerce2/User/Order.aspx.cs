using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce2.User
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string orderId = Session["OrderId"].ToString();
            int TPrice = Convert.ToInt32( Session["Total_Price"]);
            Label1.Text = orderId;
            Label3.Text = TPrice.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<alert> Payment Successful</alert>");
        }
    }
}