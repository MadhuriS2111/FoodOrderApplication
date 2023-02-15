using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodOrderApplication
{
    public partial class OrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            string Name = txtName.Text;
            long Mobile = long.Parse(txtMobile.Text);
            string BurgerTypes = string.Empty;
            int BurgerCost = 0, AddOnsCost = 0, TotalCost = 0;
            if (rdoVeg.Checked)
            {
                BurgerTypes = rdoVeg.Text;
                BurgerCost = 60;
            }
            else if (rdoNonVeg.Checked)
            {
                BurgerTypes = rdoVeg.Text;
                BurgerCost = 125;
            }
            string Addons = string.Empty;
            if (ChkFrench.Checked)
            {
                Addons += ChkFrench.Text + ',';
                AddOnsCost += 45;
            }
            if (ChkCoke.Checked)
            {
                Addons += ChkCoke.Text + ',';
                AddOnsCost += 25;
            }

            TotalCost = BurgerCost + AddOnsCost;

            string query = "INSERT INTO FoodOrder VALUES(@Name,@Address,@Mobile,@BurgerTypes,@Addons,@BurgerTypesCost,@AddonsCost,@TotalCost)";
            string constr = ConfigurationManager.ConnectionStrings["madhuri_TaskConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@Name",  Name);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@Mobile", Convert.ToString( Mobile));
                    cmd.Parameters.AddWithValue("@BurgerTypes", Convert.ToString(BurgerTypes));
                    cmd.Parameters.AddWithValue("@Addons", Convert.ToString(Addons));
                    cmd.Parameters.AddWithValue("@BurgerTypesCost", Convert.ToString(BurgerCost));
                    cmd.Parameters.AddWithValue("@AddonsCost", Convert.ToString(AddOnsCost));
                    cmd.Parameters.AddWithValue("@TotalCost", Convert.ToString(TotalCost));
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            Session["Name"] = Name;
            Session["Mobile"] = Mobile;
            Session["BurgerTypes"] = BurgerTypes;
            Session["Addons"] = Addons;
            Session["BurgerCost"] = BurgerCost;
            Session["AddOnsCost"] = AddOnsCost;
            Session["TotalCost"] = TotalCost;            



            Response.Redirect("BillPage.aspx");

        }
    }
}

