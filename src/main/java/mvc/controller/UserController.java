package mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import mvc.formregistration.Gender;
import mvc.formregistration.User;

@Controller
public class UserController {
    private static final String[] countries = {"Vietnam", "United States", "Germany"};

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("genders", Gender.values());
        model.addAttribute("countries", countries);

        return "formregistration/userForm";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String processUser(User user) {
        return "formregistration/userResult";
    }
}
