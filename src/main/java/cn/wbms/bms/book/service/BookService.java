package cn.wbms.bms.book.service;

import java.util.List;
import java.util.Map;

import cn.wbms.bms.book.entity.Book;


/**
 * 
 * Title: 图书管理业务层接口对象
 * Description: 用于处理图书业务逻辑
 * Copyright: Copyright (c) 2017
 * @author wangjn
 * @version 1.0
 * @date  2017年12月18日 下午3:53:11
 *
 */
public interface BookService {
	
	/**
	 * 依据图书id查找图书信息
	 * @param bId 图书id
	 * @return Book 图书实体
	 * @author wangjn
	 * @date  2017年12月18日 下午3:59:46
	 */
	Book findObjectById(Integer bId);
	/**
	 *
	 * 更新数据库中图书信息
	 * @param entity 图书实体
	 * @author wangjn
	 * @date 2017年12月18日 下午3:57:14
	 */
	void updateObject(Book entity);

	/**
	 * 向数据库中存入一个图书信息
	 * @param entity 图书实体
	 */
	void saveObject(Book entity);

	/**
	 * 查找所有的图书信息
	 * @author wangjn
	 * @date 2017/12/21 9:56
	 */
	List<Book> findObjects();

	/**
	 * 用于将用户搜索的图书信息，以分页形式返回
	 * @param state 用户选择的图书状态
	 * @param name 用户输入的搜索关键字
	 * @param pageCurrent 当前页码
	 * @return 获取当前页数据及分页信息
	 */
	Map<String,Object> findPageObjects(String name,Integer state,int pageCurrent);

	/**
	 * 用于改变图书状态
	 * @param state 状态(可借阅、不可借阅)
	 * @param ids 由多个id构成的字符串
	 */
	void stateById(Integer state,String ids);

	/**
	 * 服务层删除图书的方法接口
	 * @param ids 用户选中的图书id 格式(1,2,3,....)
	 * @author wangjn
	 */
	void deleteObject(String ids);
}
