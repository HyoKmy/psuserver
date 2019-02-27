package Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class TourTypesController {
    @RequestMapping(value="/dTourTypes", method= RequestMethod.GET)
    public String mainPage(){
        return "dTourTypes";
    }
}
