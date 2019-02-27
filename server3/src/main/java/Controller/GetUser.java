package Controller;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GetUser {
    private String ids;
    private int grade;
    private int grades;

    public int getgrade() throws SQLException {
        ConnectDatabase database = new ConnectDatabase();
        ResultSet rs = database.executeQuery("SELECT * FROM user");

        while (true) {
            try {
                if (!rs.next()) break;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ids = rs.getString("id");
            grades = rs.getInt("grade");

            if (ids.equals("Admain") ) {
                grade = grades;
            }
        }
        return grade;
    }
}
