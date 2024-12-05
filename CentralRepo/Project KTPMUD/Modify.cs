using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Project_KTPMUD
{
    internal class Modify
    {
        public Modify() { }

        SqlCommand sqlCommand; // Dung de truy van cac cau lenh insert, update, delete
        SqlDataReader dataReader; //Dung de doc du lieu trong bang

        public List<TaiKhoan> TaiKhoans(string query) // Check tai khoan
        {
            List<TaiKhoan> TaiKhoans = new List<TaiKhoan>();
            using (SqlConnection sqlConnection = Connection.GetSqlConnection())
            {
                sqlConnection.Open();
                sqlCommand = new SqlCommand(query, sqlConnection);
                dataReader = sqlCommand.ExecuteReader();
                while (dataReader.Read()) 
                {
                    TaiKhoans.Add(new TaiKhoan(dataReader.GetString(0), dataReader.GetString(1)));

                }
                sqlConnection.Close();
            }
            return TaiKhoans;
        }
        public void Command(string query) //Dung de dang ky tai khoan
        {
            using(SqlConnection sqlConnection = Connection.GetSqlConnection())
            {
                sqlConnection.Open();
                sqlCommand = new SqlCommand (query, sqlConnection);
                // Thuc thi cau truy van
                sqlCommand.ExecuteNonQuery(); // Thuc thi cau truy van
                sqlConnection.Close();
            }
        }
    }
}
