using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CRUDApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=ProgramingDB;Integrated Security=True"))
                {
                    using (SqlCommand comm = con.CreateCommand())
                    {
                        comm.CommandText = "Insert into StudentInfo_Tab Values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')";
                        con.Open();
                        comm.ExecuteNonQuery();
                        con.Close();
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted')", true);
                }
                LoadRecord();
            }
            catch (Exception ex)
            {
                this.Session["exceptionMessage"] = ex.Message;
                Response.Redirect("ErrorDisplay.aspx");
            }
        }

        void LoadRecord()
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=ProgramingDB;Integrated Security=True"))
                {
                    using (SqlCommand comm = con.CreateCommand())
                    {
                        comm.CommandText = "select * from StudentInfo_Tab";
                        con.Open();
                        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(comm);
                        DataTable dt = new DataTable();
                        sqlDataAdapter.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('error : " + ex.Message + "')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=ProgramingDB;Integrated Security=True"))
                {
                    using (SqlCommand comm = con.CreateCommand())
                    {
                        comm.CommandText = "Update StudentInfo_Tab set StudentName='" + TextBox2.Text + "',Address='" + DropDownList1.SelectedValue + "',Age='" + double.Parse(TextBox3.Text) + "',Contact='" + TextBox4.Text + "' where StudentID = '" + int.Parse(TextBox1.Text) + "'";
                        con.Open();
                        comm.ExecuteNonQuery();
                        con.Close();
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated')", true);
                }
                LoadRecord();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('error : " + ex.Message + "')", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=ProgramingDB;Integrated Security=True"))
                {
                    using (SqlCommand comm = con.CreateCommand())
                    {
                        comm.CommandText = "Delete from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'";
                        con.Open();
                        comm.ExecuteNonQuery();
                        con.Close();
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted')", true);
                }
                LoadRecord();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('error : " + ex.Message + "')", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            LoadRecord();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
                TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
                DropDownList1.Text = GridView1.SelectedRow.Cells[3].Text;
                TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
                TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('error : " + ex.Message + "')", true);
            }
        }
    }
}