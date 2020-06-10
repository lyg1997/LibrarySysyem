package lyg.service.impl;

import lyg.dao.UserDao;
import lyg.entity.ReaderInfo;
import lyg.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    @Resource
    private UserDao userDao;
public int queryUser(int id, String password){return  userDao.queryUser(id,password);}
    public int userLogin(int id, String password) {
        return userDao.userLogin(id, password);
    }

    public List<ReaderInfo> findUserList() {
        return userDao.findUserList();
    }

    public void addReader(ReaderInfo readerInfo) {
        userDao.addReader(readerInfo);
    }
    public void  addUser(Integer reader_id){ userDao.addUser(reader_id);}

    public void readerUpdate(ReaderInfo readerInfo) {
        userDao.readerUpdate(readerInfo);
    }

    public void readerDel(Integer id) {
        userDao.readerDel(id);
    }

    public ReaderInfo readerDetail(Integer id) {
        return userDao.readerDetail(id);
    }

    public  void editPwd(String password, String newPwd, int id){userDao.editPwd(password,newPwd,id);}

    public  String getUserName(int id){return userDao.getUserName(id);}
}
//
//
//
//  public void userDel(int id){userDao.userDel(id);
//  }
//  public List<User>  userSearch(String userName){
//    return userDao.userSearch(userName);
//  }
// public User detail(int id){return userDao.detail(id);}
