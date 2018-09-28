package cn.wbms.bms.book.dao;

import cn.wbms.bms.book.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**图书模块持久层对象*/
public interface BookDao {
    
    /**
     * 
     * @Title: findObjectById
     * @Description: TODO(依据id查找图书信息)
     * @param bId 图书id
     * @return Book 图书实体
     * @author wangjn
     * @version 1.0
     * @createtime 2017年12月19日 下午4:04:19
     */
	Book findObjectById(Integer bId);
	
	/**
	 * 更新一个图书信息
	 * @param entity
	 * @return
	 */
	int updateObject(Book entity);
	
	/**
	 * 插入一个图书
	 * @param entity
	 * @return
	 */
	int insertObject(Book entity);
	
	/**
	 * 删除图书信息
	 * @param ids
	 * @return
	 */
	int deleteObject(@Param("ids") String[] ids);
	
	/**获取所有图书信息*/
	List<Book> findObjects();
	/**
	 * 以分页形式获取所有图书信息
	 * @Param name 查询时用户输入的
	 * @Param state 查询时图书的状态
	 * @param startIndex 分页查询的起始位置
	 * @param pageSize 每一页的大小
	 * @return
	 */
	List<Book> findPageObjects(
			@Param("name")String name,
			@Param("state")Integer state,
			@Param("startIndex")int startIndex,
			@Param("pageSize")int pageSize);

	/**
	 * 获取表中记录数
	 * @param name
	 * @param state
	 * @return
	 */
	int getRowCount(
			@Param("name")String name,
			@Param("state")Integer state);
	/**禁用或启用图书信息*/
	int stateById(
			@Param("state")Integer state,
			@Param("ids")String[] ids);
}
