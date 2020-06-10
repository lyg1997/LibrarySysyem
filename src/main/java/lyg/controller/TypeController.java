package lyg.controller;

import lyg.entity.Category;
import lyg.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TypeController {
    @Autowired
    private TypeService typeService;

    @RequestMapping("/findCateGory")
    public ModelAndView findCateGory() {

        ModelAndView mv = new ModelAndView();
        List<Category> categories = typeService.findCateGory();
        mv.addObject("categories", categories);
        mv.setViewName("/jsp/admin/admin_category.jsp");
        return mv;
    }
    @RequestMapping("/addCategory")
    public String addCategory(String type){
        typeService.addCategory(type);
        return "redirect:/findCateGory";
    }
    @RequestMapping("/categoryDel")
    public String  categoryDel(int type_id){
        typeService.categoryDel(type_id);
        return "redirect:/findCateGory";
    }
}
