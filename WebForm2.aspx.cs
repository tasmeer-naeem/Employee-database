using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Q_NO_5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("");
            Response.Redirect("WebForm1.aspx");
        }

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                var query = "insert into employee values('" + employename.Text + "','" + dob.Text + "','" + contact.Text + "','" + address.Text + "','" + email.Text + "')";
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True"))
                {
                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    Label1.Text = "USER REGISTERED SUCCESSFULLY";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            GridView1.DataBind();
            ListBox1.DataBind();
        }
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var query = "select * from employee where id= " + ListBox1.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True"))
                {
                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        employename.Text = reader["EmployeeName"].ToString();
                        dob.Text = Convert.ToDateTime(reader["DateOfBirth"]).ToString("dd-mm-yyyy");
                        contact.Text = reader["ContactNumber"].ToString();
                        address.Text = reader["Address"].ToString();
                        email.Text = reader["Email"].ToString();
                    }
                }
                

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        protected void update_Click(object sender, EventArgs e)
        {
          
                var query = "update employee set EmployeeName='" + employename.Text + "',DateOfBirth='" + dob.Text + "',ContactNumber='" + contact.Text + "',Address='" + address.Text + "',Email='" + email.Text + "'where id=" + ListBox1.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True"))
                {
                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    Label1.Text = "USER UPDATED SUCCESSFULLY";
                }

            GridView1.DataBind();
            ListBox1.DataBind();

        }
        protected void delete_Click(object sender, EventArgs e)
        {
            try
            {
                var query = "delete from employee where id=" + ListBox1.SelectedValue;
                using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True"))
                {
                    var comm = new SqlCommand(query, conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    Label1.Text = "USER DELETED SUCCESSFULLY";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            GridView1.DataBind();
            ListBox1.DataBind();
        }
    }
}

     

      