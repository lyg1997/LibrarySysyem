package lyg.controller;

import lyg.entity.LendInfo;
import lyg.service.BookService;
import lyg.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class LendController {
    @Autowired
    private LendService lendService;
    @Autowired
    private BookService bookService;

    //    @RequestMapping("/bookLend")
//    public String bookLend(HttpServletRequest request, RedirectAttributes redirectAttributes, HttpSession httpSession) {
//        int book_id = Integer.parseInt(request.getParameter("book_id"));
//        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
//        if (lendService.lendBookOne(book_id, id)&&lendService.lendBookTwo(book_id, id)) {
//            redirectAttributes.addFlashAttribute("succ", "图书借阅成功！");
//        } else {
//            redirectAttributes.addFlashAttribute("succ", "图书借阅成功！");
//        }
//        return "redirect:/reader_books.html";
//    }
//    @RequestMapping("/reader_books.html")
//    public ModelAndView readerBooks(HttpServletRequest request, HttpSession httpSession) {
//        List<BookInfo> books = bookService.findBookList();
//        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
//        ArrayList<Lend> myAllLendList = lendService.myLendList(readerCard.getReaderId());
//        ArrayList<Long> myLendList = new ArrayList<>();
//        for (Lend lend : myAllLendList) {
//            // 是否已归还
//            if (lend.getBackDate() == null) {
//                myLendList.add(lend.getBookId());
//            }
//        }
//        ModelAndView modelAndView = new ModelAndView("reader_books");
//        modelAndView.addObject("books", books);
//        modelAndView.addObject("myLendList", myLendList);
//        return modelAndView;
//    }
    @RequestMapping("/logbook")
    @ResponseBody
    public ModelAndView borrow(HttpServletRequest request, HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        int book_id = Integer.parseInt(request.getParameter("book_id"));
        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
        if (lendService.queryLend(book_id, id) > 0) {
            mv.addObject("error", "您已借阅过这本书！");
        } else {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            String lend_date = df.format(new Date());
            lendService.addLendList(book_id, id, lend_date);
            lendService.decreaseBookNumber(book_id);
            mv.addObject("succ", "借阅成功！");
        }
        return new ModelAndView("redirect:/findBookList_reader");
    }

    @RequestMapping("/backBook")
    public String backBook(int id,HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String back_date = df.format(new Date());
        lendService.backBook(id,back_date);
        lendService.increaseBookNumber(id);
        return "redirect:/lendList";
    }

    @RequestMapping("/lendList")
    public ModelAndView lendList() {
        ModelAndView mv = new ModelAndView();
        List<LendInfo> lendInfo = lendService.LendList();
        mv.addObject("lendList", lendInfo);
        mv.setViewName("/jsp/admin/admin_lendInfo.jsp");
        return mv;
    }

    @RequestMapping("/myLendList")
    public ModelAndView myLendList(HttpSession httpSession) {
        ModelAndView mv = new ModelAndView();
        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
        List<LendInfo> lendInfo = lendService.myLendList(id);
        mv.addObject("lendList", lendInfo);
        mv.setViewName("/jsp/reader/reader_lend.jsp");
        return mv;
    }
}
