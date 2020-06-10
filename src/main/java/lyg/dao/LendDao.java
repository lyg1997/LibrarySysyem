package lyg.dao;

import lyg.entity.LendInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LendDao {
    void addLendList(@Param("book_id") int book_id, @Param("id") int id, @Param("lend_date") String lend_date);

    int queryLend(@Param("book_id") int book_id, @Param("id") int id);

    List<LendInfo> LendList();

    List<LendInfo> myLendList(int id);

    List<LendInfo> borrowedList(int id);

    void backBook(@Param("id") int id, @Param("back_date") String back_date);

    void decreaseBookNumber(int book_id);

    void increaseBookNumber(int id);
}
