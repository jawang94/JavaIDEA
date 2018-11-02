package com.wang.hellohuman.hellohuman;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HumanController {
    @RequestMapping("/")
    public String home(Model model, @RequestParam(value="name", required=false) String name) {
        if (name != null) {
            model.addAttribute("name", name);
            return "index.jsp";
        }
        else {
            name = "Human";
            model.addAttribute("name", name);
            return "index.jsp";
        }
    }
}
