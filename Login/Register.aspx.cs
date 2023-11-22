using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Login
{
    
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into Signup values(@fname,@lname,@gender,@email,@address,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", FnTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", LnTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@email", EmTextBox.Text);
            cmd.Parameters.AddWithValue("@address", AdTextBox.Text);
            cmd.Parameters.AddWithValue("@username", UnTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PwTextBox.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Signup Successfull...Username is: " + UnTextBox.Text + " and password is:"+PwTextBox.Text+"');",true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login failed')</script>");

            }
            con.Close();

        }
        void ClearControls()
        {
            FnTextBox.Text = LnTextBox.Text= EmTextBox.Text = AdTextBox.Text = UnTextBox.Text = PwTextBox.Text = CpwTextBox.Text = "";
            DropDownList1.ClearSelection();
        }
    }
}