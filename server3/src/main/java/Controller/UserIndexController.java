package Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class UserIndexController {
    @RequestMapping(value="/User_index", method= RequestMethod.GET)
    public String mainPage(){
    return "User_index";
}

}
