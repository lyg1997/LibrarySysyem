package lyg.service.impl;

import lyg.dao.TypeDao;
import lyg.entity.Category;
import lyg.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("typeService")
public class TypeServiceImpl implements TypeService {
    @Autowired
    @Resource
    private TypeDao typeDao;

    public List<Category> findCateGory() {
        return typeDao.findCateGory();
    }
    public  void addCategory(String type){typeDao.addCategory(type);}
    public  void categoryDel(int type_id){typeDao.categoryDel(type_id);}
}
