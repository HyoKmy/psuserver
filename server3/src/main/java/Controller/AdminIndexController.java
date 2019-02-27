package Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@org.springframework.stereotype.Controller

public class AdminIndexController {
    @RequestMapping(value="/Admin_index", method= RequestMethod.GET)
    public String mainPage(){
        return "Admin_index";
    }

}

