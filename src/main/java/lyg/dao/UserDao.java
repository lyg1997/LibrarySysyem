package lyg.dao;

import lyg.entity.ReaderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    int userLogin(@Param("id") int id, @Param("password") String password);
    int queryUser(@Param("id") int id, @Param("password")  String password);

    List<ReaderInfo> findUserList();

    void addReader(ReaderInfo readerInfo);
    void addUser(Integer reader_id);
    String getUserName(int id);

    void readerUpdate(ReaderInfo readerInfo);

    void readerDel(Integer id);

    ReaderInfo readerDetail(Integer id);

    void editPwd(@Param("password") String password, @Param("newPwd") String newPwd,@Param("reader_id") int id);
//   User userAdd(@Param("userId") int userId,@Param("userName") String userName);
//   void userAdd(User user);
//
//    void userAdd(User user);
//
//  void userDel(@Param("id") int id);
//
//    List<User> userSearch(@Param("userName") String userName);
//    User detail(@Param("id") int id);
}
