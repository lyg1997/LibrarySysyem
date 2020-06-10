package lyg.service;

import lyg.entity.BookInfo;

import java.util.List;

public interface BookService {
    List<BookInfo> findBookList();

    void addBook(BookInfo book);

    int bookDel(int book_id);

    BookInfo selectById(int book_id);

    BookInfo bookDetail(int book_id);

    void bookUpdate(BookInfo book);

}
