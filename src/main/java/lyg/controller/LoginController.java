package lyg.controller;


import lyg.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    /**
     * 登录
     */
    @RequestMapping("/userLogin")
    @ResponseBody
    public ModelAndView userLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");
        String userName = userService.getUserName(id);
      int user = userService.userLogin(id,password);
        request.getSession().setAttribute("currentUser", id);
        request.getSession().setAttribute("userName",userName);
        mv.addObject("msg", user);
        if (user == 1) {
            mv.setViewName("admin_main.jsp");
            return mv;
        } else if (user == 0) {
            mv.setViewName("reader_main.jsp");
        }
        return mv;
    }
    @RequestMapping("/logout")
    public String  logout(){
        return "login.jsp";
    }
    @RequestMapping("/home_admin")
    public String home_admin(){
        return "admin_main.jsp";
    }
    @RequestMapping("/home_reader")
    public String home_reader(){
        return "reader_main.jsp";
    }
}
