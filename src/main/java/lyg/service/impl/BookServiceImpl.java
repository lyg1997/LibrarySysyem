package lyg.service.impl;

import lyg.dao.BookDao;
import lyg.entity.BookInfo;
import lyg.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("bookService")
public class BookServiceImpl implements BookService {
    @Autowired
    @Resource
    private BookDao bookDao;

    public List<BookInfo> findBookList() {
        return bookDao.findBookList();
    }

    public void addBook(BookInfo book) {
        bookDao.addBook(book);
    }

    public int bookDel(int book_id) {
        return bookDao.bookDel(book_id);
    }

    public BookInfo selectById(int book_id) {
        return bookDao.selectById(book_id);
    }

    public BookInfo bookDetail(int book_id) {
        return bookDao.bookDetail(book_id);
    }

    public void bookUpdate(BookInfo book) {
        bookDao.bookUpdate(book);
    }

}
