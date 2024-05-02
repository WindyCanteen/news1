using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        string searchText = TextBoxSearch.Text.Trim();
        string con1 ="Server=.;Database=123;Trusted_Connection=True";         //    数据库连接字符串(更换)
        using (SqlConnection connection = new SqlConnection(con1))
        {
            string query = "SELECT * FROM [Table] WHERE name Like '%'+@searchText +'%'";         //Table为我建的表名，以name列为搜索依据（更换）
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@searchText", searchText);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
        }
    }

}

