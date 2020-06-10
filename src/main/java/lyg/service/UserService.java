package lyg.service;

import lyg.entity.ReaderInfo;

import java.util.List;

public interface UserService {

    int userLogin(int id, String password);

    List<ReaderInfo> findUserList();

    void addReader(ReaderInfo readerInfo);

    void readerUpdate(ReaderInfo readerInfo);

    void readerDel(Integer id);

    ReaderInfo readerDetail(Integer id);

    void editPwd(String password, String newPwd, int id);

    int queryUser(int id, String password);

    void addUser(Integer reader_id);

    String getUserName(int id);


//   void userAdd(User user);
//
//    void userDel(int id);
//
//    List<User> userSearch(String userName);
//
//    User detail(int id);
}