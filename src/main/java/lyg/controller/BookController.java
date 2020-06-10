package lyg.controller;

import lyg.entity.BookInfo;
import lyg.entity.Category;
import lyg.entity.LendInfo;
import lyg.service.BookService;
import lyg.service.LendService;
import lyg.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookController {
    @Autowired
    private BookService bookService;
    @Autowired
    private TypeService typeService;
    @Autowired
    private LendService lendService;

    /**
     * 图书信息列表
     *
     * @return
     */
    @RequestMapping("/findBookList_admin")
    public ModelAndView findBookList_admin() {
        ModelAndView mv = new ModelAndView();
        List<BookInfo> book = bookService.findBookList();
        mv.addObject("bookList", book);
        mv.setViewName("/jsp/admin/admin_book.jsp");
        return mv;
    }

    @RequestMapping("/findBookList_reader")
    public ModelAndView findBookList_reader(HttpSession httpSession) {
        ModelAndView mv = new ModelAndView();
        int id = Integer.parseInt(httpSession.getAttribute("currentUser").toString());
        List<BookInfo> book = bookService.findBookList();
        List<LendInfo> lendList = lendService.borrowedList(id);
        mv.addObject("bookList", book);
        mv.addObject("lendList", lendList);
        mv.setViewName("/jsp/reader/reader_book.jsp");
        return mv;
    }

    @RequestMapping("/bookDetail")
    public ModelAndView bookDetail(int book_id) {

        ModelAndView mv = new ModelAndView();
        BookInfo book = bookService.bookDetail(book_id);
        List<Category> cate = typeService.findCateGory();
        mv.addObject("categories", cate);
        mv.addObject("detail", book);
        mv.setViewName("/jsp/admin/admin_bookDetail.jsp");
        return mv;
    }

    /**
     * 添加图书信息
     */
    @RequestMapping("/addBook")
    public String addBook(String bookName, String author, String publish, String ISBN, String introduction, String language,
                          Double price, String pub_date, int number, String type) {
        BookInfo book = new BookInfo();
        book.setType(type);
        book.setBookName(bookName);
        book.setAuthor(author);
        book.setPublish(publish);
        book.setISBN(ISBN);
        book.setIntroduction(introduction);
        book.setLanguage(language);
        book.setPrice(price);
        book.setPub_date(pub_date);
        book.setNumber(number);
        bookService.addBook(book);
        return "redirect:/findBookList_admin";
    }

    @RequestMapping("/bookUpdate")
    public String bookUpdate(int book_id, String bookName, String author, String publish, String ISBN, String introduction, String language,
                             Double price, String pub_date, int number, String type) {
        BookInfo book = new BookInfo();
        book.setType(type);
        book.setBook_id(book_id);
        book.setBookName(bookName);
        book.setAuthor(author);
        book.setPublish(publish);
        book.setISBN(ISBN);
        book.setIntroduction(introduction);
        book.setLanguage(language);
        book.setPrice(price);
        book.setPub_date(pub_date);
        book.setNumber(number);
        bookService.bookUpdate(book);
        return "redirect:/findBookList_admin";
    }

    /**
     * 删除图书信息
     *
     * @return
     */
    @RequestMapping("/bookDel")
    public String bookDel(int book_id) {
        bookService.bookDel(book_id);
        return "redirect:/findBookList_admin";
    }
    /**
     * 条件搜索
     */


//    @RequestMapping("/conditionSearch")
//    public ModelAndView conditionSearch(condition)(
//            ModelAndView mv = new ModelAndView();
//            BookInfo book = bookService.conditionSearch();
//    )
//    @RequestMapping("/reader_books.html")
//    public ModelAndView readerBooks(HttpServletRequest request) {
//        ArrayList<BookInfo> books = bookService.getAllBooks();
//        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
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
}
