using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePages
{
    public partial class ConsultarFactura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = ejecutarSQl("select * from tabla");

            grid.DataSource = dt;
            grid.DataBind();
        }


        public DataTable ejecutarSQl(string sentencia)
        {
            DataTable dt = new DataTable();
            SqlConnection cnx = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
            SqlCommand cmd;
            SqlDataAdapter adapter;
            cmd = new SqlCommand(sentencia, cnx);
            adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            return dt;
        }
    }
}