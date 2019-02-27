package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
public class LoginController {

    @RequestMapping(value = "/Login*", method = RequestMethod.GET)
    public ModelAndView Login() {
        ModelAndView model = new ModelAndView();
        model.setViewName("Login");
        return model;
    }

    @RequestMapping(value = "/Welcome", method = RequestMethod.POST)
    public ModelAndView welcome(
            @RequestParam("id") String id,
            @RequestParam("pwd") String pwd
  ) throws SQLException {
        String ids;
        String pwds;
        int grade;
        int Adgrade;

        ModelAndView model = new ModelAndView();
        ConnectDatabase database = new ConnectDatabase();
        ResultSet rs = database.executeQuery("SELECT * FROM user");

        while (true) {
            try {
                if (!rs.next()) break;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ids = rs.getString("id");
            pwds = rs.getString("pwd");
//
//            GetUser admingrade = new GetUser();
//            Adgrade = admingrade.getgrade();

            grade = rs.getInt("grade");

            if (ids.equals(id) && pwds.equals(pwd)) {
                model.addObject("ids", ids);
                model.addObject("grade", grade);
                if(grade==0) {model.setViewName("Admin_index");}
                else{model.setViewName("User_index");}
                break;
            } else {
                model.setViewName("Login");
            }
        }

        rs.close();
        database.close();

        return model;
    }
}

