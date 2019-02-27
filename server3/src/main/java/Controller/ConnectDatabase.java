package Controller;
import java.sql.*;
/*
* @author Juhyun Lee
* */
public class ConnectDatabase {
    private Connection connection=null;

    //1) Constructor
    public ConnectDatabase(){
        try{
            connect();
        }
        catch(Exception e){
            new RuntimeException("Database connection failed");
        }
    }

    //2) Connect to database
    public void connect() {
        String url="jdbc:sqlite:C:\\Users\\pss\\Desktop\\PSUinternship-master\\server3\\userdb.sqlite3";
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try{

            connection= DriverManager.getConnection(url);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //3. close the database
    public void close(){
        try{
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //4. executeQuery - Select
    public ResultSet executeQuery(String query) {
        try{
            Statement statement=connection.createStatement();
            ResultSet rs=statement.executeQuery(query);
            return rs;

        }
        catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    //4. executeUpdate - Insert ...
    public int executeUpdate(String query){
        try{
            Statement statement=connection.createStatement();
            int result=statement.executeUpdate(query);
            return result;
        }
        catch(SQLException e){
            e.printStackTrace();
            return -1;
        }
    }
}


