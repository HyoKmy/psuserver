package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author matthew
 */
public class Database
{
    //private static Database sharedInstance;
    //private Database(){}
    private Connection connection = null;
    public static String errorMessage = "";
    
    /*static 
    {
        try
        {
            sharedInstance = new Database();
            connect();
        }
        catch(Exception e)
        {
            throw new RuntimeException("Failed to create Database singleton.");
        }
    }
    
    public static Database getInstance()
    {
        return sharedInstance;
    }*/

    public Database() throws ClassNotFoundException {
        connect();
    }

    private void connect() throws ClassNotFoundException {
        //Path should eventually be something like /var/www/website/JRWT.sqlite3
        String url = "jdbc:sqlite:C:\\Users\\pss\\Desktop\\PSUinternship-master\\server3\\JRWT.sqlite3";
        Class.forName("org.sqlite.JDBC");
        try
        {
            connection = DriverManager.getConnection(url);
            connection.setAutoCommit(false);
        }
        catch (SQLException e)
        {
            System.err.println(e.getMessage());
            //Log.getInstance().write("failed to connect to database", e.getMessage(), e.getCause().toString());
            decodeErrorMessage("Connect", "", e);
        }
        //System.out.println("Connected to database");
        //Log.getInstance().write("connected to database");
    }

    public void close()
    {
        try
        {
            connection.close();
            //Log.getInstance().write("closed database");
        }
        catch (SQLException e)
        {
            //System.err.print(e.getMessage());
            //Log.getInstance().write("failed to close database", e.getMessage(), e.getCause().toString());
            decodeErrorMessage("Close", "", e);
        }
    }
    
    public ResultSet executeQuery(String query)
    {
        try 
        {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            return rs;
        }
        catch(SQLException e)
        {
            //System.err.println("SQL error: Query " + query + " failed with message:" + e.getMessage());
            decodeErrorMessage("ExecuteQuery", query, e);
            return null;
        }
    }
    
    public int executeUpdate(String query)
    {
        try 
        {
            Statement stmt = connection.createStatement();
            int result = stmt.executeUpdate(query);
            
            return result;
        }
        catch(SQLException e)
        {
            //System.err.println("SQL error: Update " + query + " failed with message:" + e.getMessage());
            decodeErrorMessage("ExecuteUpdate", query, e);
            return -1;
        }
    }
    
    private void rollback()
    {
        try 
        {
            connection.rollback();
        }
        catch(SQLException e)
        {
            //System.err.println(e.getMessage());

            //This is basically unrecoverable
            throw new RuntimeException("Unable to rollback database");

            //decodeErrorMessage("Rollback", "", e);
        }
    }
    
    public PreparedStatement getPreparedStatment(String query)
    {
        try 
        {
            PreparedStatement statment = connection.prepareStatement(query);
            return statment;
        }
        catch(SQLException e)
        {
            //System.err.println(e.getMessage());
            decodeErrorMessage("GetPreparedStatment", query, e);
            return null;
        }
    }
    
    public void executePreparedStatmentUpdate(PreparedStatement statement)
    {
        try 
        {
            statement.executeUpdate();
        }
        catch(SQLException e)
        {
            //System.err.println(e.getMessage());
            decodeErrorMessage("ExecutePreparedStatmentUpdate", statement.toString(), e);
        }
    }
    
    public ResultSet executePreparedStatmentQuery(PreparedStatement statement)
    {
        try
        {
            return statement.executeQuery();
        }
        catch(SQLException e)
        {
            //System.err.println(e.getMessage());
            decodeErrorMessage("ExecutePreparedStatmentQuery", statement.toString(), e);
            return null;
        }
    }
    
    public void commit()
    {
        try 
        {
            connection.commit();
        }
        catch(SQLException e)
        {
            //System.err.println(e.getMessage());
            decodeErrorMessage("Commit", "", e);
        }
    }
    
    //Any database errors should be treated as unrecoverable to prevent situation where data is changed in the
    //database, but associated files have not be uploaded or deleted. 
    private void decodeErrorMessage(String function, String query, SQLException e)
    {   
        errorMessage = String.format("SQL error: %s: %s failed with message: %s", function, query, e.getMessage());

        Log.write(errorMessage);
        //System.err.println(error);
        rollback();
        //throw new RuntimeException(e.getMessage());
    }
}
