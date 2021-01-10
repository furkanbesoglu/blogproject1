using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace blogproject1
{
    public class methodlar
    {
        public static string EkleGuncelleSil(string baglanti, string spAdi, string[] parametre, object[] parametreDeger)
        {

            StringBuilder errorMessages = new StringBuilder();

            SqlConnection conn = null;
            SqlCommand cmd = null;
            //  

            int i = 0;

            try
            {

                conn = new SqlConnection(ConfigurationManager.ConnectionStrings[baglanti].ConnectionString);
                conn.Open();

                cmd = new SqlCommand(spAdi, conn);
                cmd.CommandType = CommandType.StoredProcedure;


                while (i < parametre.Length && i < parametreDeger.Length)
                {
                    cmd.Parameters.AddWithValue(parametre[i], parametreDeger[i]);

                    i++;
                }

                string etkilenen = cmd.ExecuteNonQuery().ToString();

                cmd.Dispose();
                conn.Dispose();
                conn.Close();
                return etkilenen;





            }
            catch (SqlException ex)
            {
                //throw ex;
                //return ex.Number;
                for (int j = 0; j < ex.Errors.Count; j++)
                {
                    errorMessages.Append("Index #" + j + "\n" +
                        "Mesaj: " + ex.Errors[j].Message + "\n" +
                        "Hata No: " + ex.Errors[j].Number + "\n" +
                        "Satır No: " + ex.Errors[j].LineNumber + "\n" +
                        "Kaynak: " + ex.Errors[j].Source + "\n" +
                        "Prosedür: " + ex.Errors[j].Procedure + "\n");
                }
                return errorMessages.ToString();
            }
            finally
            {
                if (cmd != null)
                {
                    cmd.Dispose();
                }
                if ((conn != null) && (conn.State != ConnectionState.Closed))
                {
                    conn.Dispose();
                    conn.Close();
                }
            }
        }




        public static DataTable gosterDataTablosu(string baglanti, string spAdi, string[] parametre, object[] parametreDeger)
        {

            StringBuilder errorMessages = new StringBuilder();

            SqlConnection conn = null;
            SqlCommand cmd = null;
            SqlDataReader rdr = null;
            DataTable dt = new DataTable();
            //  

            int i = 0;

            try
            {

                conn = new SqlConnection(ConfigurationManager.ConnectionStrings[baglanti].ConnectionString);
                conn.Open();

                cmd = new SqlCommand(spAdi, conn);
                cmd.CommandType = CommandType.StoredProcedure;


                while (i < parametre.Length && i < parametreDeger.Length)
                {
                    cmd.Parameters.AddWithValue(parametre[i], parametreDeger[i]);

                    i++;
                }

                rdr = cmd.ExecuteReader();

                dt.Load(rdr);

                cmd.Dispose();
                conn.Dispose();
                conn.Close();
                return dt;

            }
            catch (SqlException ex)
            {
                //throw ex;
                //return ex.Number;
                for (int j = 0; j < ex.Errors.Count; j++)
                {
                    errorMessages.Append("Index #" + j + "\n" +
                        "Mesaj: " + ex.Errors[j].Message + "\n" +
                        "Hata No: " + ex.Errors[j].Number + "\n" +
                        "Satır No: " + ex.Errors[j].LineNumber + "\n" +
                        "Kaynak: " + ex.Errors[j].Source + "\n" +
                        "Prosedür: " + ex.Errors[j].Procedure + "\n");
                }
                //return errorMessages.ToString();
                return null;
            }
            finally
            {
                if (cmd != null)
                {
                    cmd.Dispose();
                }
                if ((conn != null) && (conn.State != ConnectionState.Closed))
                {
                    conn.Dispose();
                    conn.Close();
                }
            }
        }
    }
}
