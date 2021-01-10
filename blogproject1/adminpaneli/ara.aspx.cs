using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace blogproject1.adminpaneli
{
    public partial class ara : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           string id = Request.QueryString["userName"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-1MAAJ30\\SQLEXPRESS;Initial Catalog=BLG;Integrated Security=True");
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from person where userName like '%" + id + "%'", conn);
            DataSet1TableAdapters.DataTable2TableAdapter dt = new DataSet1TableAdapters.DataTable2TableAdapter();
            Repeater1.DataSource = dt.PersonSecUserName(id);
            Repeater1.DataBind();
            conn.Close();
        }
    }
}