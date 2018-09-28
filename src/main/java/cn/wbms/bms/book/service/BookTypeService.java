package cn.wbms.bms.book.service;

import java.util.List;
import java.util.Map;

import cn.wbms.bms.book.entity.BookType;

public interface BookTypeService {
	/**查询分类的列表信息,在client端以gridTree形式展示*/
	public List<Map<String,Object>> 
	findGridTreeObjects();
	/**删除指定的分类信息
	 * @param id 为分类id
	 */
	void deleteObject(Integer id);
	/**保存产品类型信息*/
	void saveObject(BookType entity);
	/**查询分类节点信息,在client端以zTree形式展示*/
	List<Map<String,Object>>findZtreeNodes();
	/**根据id执行查找操作*/
	//BookType findObjectById(Integer id);
	Map<String,Object> findMapById(Integer id);
	/**根据id执行更新 操作*/
	void updateObject(BookType entity);
	
}






