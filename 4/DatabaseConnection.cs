
using System;
using System.Data;
using System.Data.SqlClient;

public class DatabaseConnection
{
    private string connectionString;

    public DatabaseConnection(string connectionString)
    {
        this.connectionString = connectionString;
    }

    public DataSet ExecuteSelectQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);

            return dataSet;
        }
    }

    public int ExecuteNonQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);
            int rowsAffected = command.ExecuteNonQuery();

            return rowsAffected;
        }
    }
}
