package lyg.service;

import lyg.entity.LendInfo;

import java.util.List;

public interface LendService {


    void addLendList(int book_id, int id, String lend_date);

    int queryLend(int book_id, int id);

    List<LendInfo> LendList();

    List<LendInfo> myLendList(int id);

    void backBook(int id, String back_date);

    void decreaseBookNumber(int book_id);

    void increaseBookNumber(int id);

    List<LendInfo> borrowedList(int id);
}
