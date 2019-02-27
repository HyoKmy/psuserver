package Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class TrailController {
    @RequestMapping(value="/dTrails", method= RequestMethod.GET)
    public String mainPage(){
        return "dTrails";
    }
}
