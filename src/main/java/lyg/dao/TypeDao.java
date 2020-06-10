package lyg.dao;

import lyg.entity.Category;

import java.util.List;

public interface TypeDao {
    List<Category> findCateGory();
    void addCategory(String type);
    void categoryDel(int type_id);
}
