package lyg.controller;

import lyg.entity.ReaderInfo;
import lyg.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 查询列表
     *
     * @return
     */
    @RequestMapping("/findUserList")
    public ModelAndView findUserList() {

        ModelAndView mv = new ModelAndView();
        List<ReaderInfo> user = userService.findUserList();
        mv.addObject("readerInfo", user);
        mv.setViewName("/jsp/admin/admin_readerInfo.jsp");
        return mv;
    }

    /**
     * 添加用户信息
     */
    @RequestMapping("/addReader")
    public String addReader(Integer reader_id, String name, String sex, String birthday, String address, String telephone) {
        ReaderInfo readerInfo = new ReaderInfo();
        readerInfo.setReader_id(reader_id);
        readerInfo.setName(name);
        readerInfo.setSex(sex);
        readerInfo.setBirthday(birthday);
        readerInfo.setAddress(address);
        readerInfo.setTelephone(telephone);
        userService.addReader(readerInfo);
        userService.addUser(reader_id);
        return "redirect:/findUserList";
    }

    @RequestMapping("/readerUpdate")
    public String readerUpdate(Integer id, Integer reader_id, String name, String sex, String birthday, String address, String telephone) {
        ReaderInfo readerInfo = new ReaderInfo();
        readerInfo.setId(id);
        readerInfo.setReader_id(reader_id);
        readerInfo.setName(name);
        readerInfo.setSex(sex);
        readerInfo.setBirthday(birthday);
        readerInfo.setAddress(address);
        readerInfo.setTelephone(telephone);
        userService.readerUpdate(readerInfo);
        return "redirect:/findUserList";
    }

    /**
     * 删除用户
     */
    @RequestMapping("/readerDel")
    public String readerDel(Integer id) {
        userService.readerDel(id);
        return "redirect:/findUserList";
    }
//    public ModelAndView userDel(int id){
//        ModelAndView mv = new ModelAndView();
//        User user = userService.userDel(id);
//        mv.addObject("userList",user);
//        mv.setViewName("userList");
//        return mv;
//    }

    /**
     * 条件搜索
     *
     * @return
     */
//    @RequestMapping("/userSearch")
//    public ModelAndView userSearch(String userName) {
//        ModelAndView mv = new ModelAndView();
//        List<User> user = userService.userSearch(userName);
//        mv.addObject("userList", user);
//        mv.setViewName("admin_main");
//        return mv;
//    }

    /**
     * 跳转到修改页面
     */
    @RequestMapping("/readerDetail")
    public ModelAndView readerDetail(Integer id) {
        ModelAndView mv = new ModelAndView();
        ReaderInfo readerInfo = userService.readerDetail(id);
        mv.addObject("detail", readerInfo);
        mv.setViewName("/jsp/admin/admin_readerDetail.jsp");
        return mv;
    }

    @RequestMapping("/toEditPwd")
    public String toEditPwd(){
        return "jsp/reader/reader_pwd.jsp";
    }
    @RequestMapping("/editPwd")
    public String editPwd(String password, String newPwd, HttpSession httpSession){
        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
        userService.editPwd(password,newPwd,id);
        return "jsp/reader/reader_pwd.jsp";
    }
//}
//    public ModelAndView userAdd(@RequestBody User user){
////        System.out.println("userId=" + user.getUserId() + ",password="
////                + user .getUserName());
////        ;
////        // 返回JSON格式的响应
////        return user;
//
//        ModelAndView mav = new ModelAndView("user");
//        mav.addObject("user","user");
//        mav.setViewName("user");
//            return mav;
//    }
//@RequestMapping("/findUserInfoList")
//public ModelAndView findUserInfoList(int id){
//    ModelAndView mav = new ModelAndView();
//    mav.setViewName("user"); //返回的文件路径
//
//    User user = userService.findUserList(2);
//    mav.addObject("user", user);
//    return mav;
//
//}

}