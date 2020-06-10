package lyg.service.impl;

import lyg.dao.LendDao;
import lyg.entity.LendInfo;
import lyg.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("lendService")
public class LendServiceImpl implements LendService {
    @Autowired
    @Resource
    private LendDao lendDao;

    public void addLendList(int book_id, int id, String lend_date) {
        lendDao.addLendList(book_id, id, lend_date);
    }

    public int queryLend(int book_id, int id) {
        return lendDao.queryLend(book_id, id);
    }

    public List<LendInfo> LendList() {
        return lendDao.LendList();
    }

    public List<LendInfo> myLendList(int id) {
        return lendDao.myLendList(id);
    }

    public List<LendInfo> borrowedList(int id) {
        return lendDao.borrowedList(id);
    }

    public void backBook(int id, String back_date) {
        lendDao.backBook(id, back_date);
    }

    public void decreaseBookNumber(int book_id) {
        lendDao.decreaseBookNumber(book_id);
    }

    public void increaseBookNumber(int id) {
        lendDao.increaseBookNumber(id);
    }
}
