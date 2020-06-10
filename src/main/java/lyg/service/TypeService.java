package lyg.service;

import lyg.entity.Category;

import java.util.List;

public interface TypeService {

    List<Category> findCateGory();

    void addCategory(String type);

    void categoryDel(int type_id);
}
