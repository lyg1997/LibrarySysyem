package lyg.dao;

import lyg.entity.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookDao {
    List<BookInfo> findBookList();

    void addBook(BookInfo book);

    int bookDel(@Param("book_id") int book_id);

    BookInfo selectById(int book_id);

    BookInfo bookDetail(int book_id);

    void bookUpdate(BookInfo book);


    void reduceStock(int book_id);
}
