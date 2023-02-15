using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodOrderApplication
{
    public partial class BillPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"]!=null)
            { 
                lblName.Text = Session["Name"].ToString();
            }
            if (Session["Mobile"] != null)
            {
                lblMobile.Text = Session["Mobile"].ToString();
            }
            if (Session["BurgerTypes"] != null)
            {
                lblBurgerType.Text = Session["BurgerTypes"].ToString();
            }
            if (Session["Addons"] != null)
            {
                lblAddOns.Text = Session["Addons"].ToString();
            }
            if (Session["BurgerCost"] != null)
            {
                lblCost.Text = Session["BurgerCost"].ToString();
            }
            if (Session["AddOnsCost"] != null)
            {
                lblCostAddOns.Text = Session["AddOnsCost"].ToString();
            }
            if (Session["TotalCost"] != null)
            {
                lblBillAmount.Text = Session["TotalCost"].ToString();
            }
         
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderList.aspx");
        }
    }
}