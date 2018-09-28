package cn.wbms.bms.book.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import cn.wbms.bms.common.util.FormatUtil;
import com.mysql.jdbc.StringUtils;
import org.springframework.stereotype.Service;

import cn.wbms.bms.book.dao.BookDao;
import cn.wbms.bms.book.entity.Book;
import cn.wbms.bms.book.service.BookService;
import cn.wbms.bms.common.exception.ServiceException;
import cn.wbms.bms.common.web.PageObject;
/**
 * 
 * Title: BookServiceImpl
 * Description: TODO(图书管理的业务层模块)
 * Copyright: Copyright (c) 2017
 * @author wangjn
 * @version 1.0
 * @date 2017年12月19日 上午10:29:30
 *
 */
@Service("bookService")
public class BookServiceImpl implements BookService{
    /**
     * 注入图书持久层
     */
	@Resource
	private BookDao bookDao;
	
	/**
	 * 
	 * 依据id查找书籍
	 * @param bId 图书id
	 * @author wangjn
	 * @date  2017年12月19日 上午10:30:08
	 */
	@Override
	public Book findObjectById(Integer bId) {
		if(bId==null) {
            throw new ServiceException("id不能为空");
        }
		Book book = bookDao.findObjectById(bId);
		if(book==null) {
            throw new ServiceException("没有bId=" + bId + "的图书");
        }
		return book;
	}

	/**
	 *
	 * 更新该书籍
	 * @param entity 书籍实体
	 * @author wangjn
	 * @date  2017年12月19日 上午10:31:31
	 */
	@Override
	public void updateObject(Book entity) {
		if(entity==null) {
            throw new ServiceException("修改信息为空");
        }
		int row = bookDao.updateObject(entity);
		if(row<=0) {
            throw new ServiceException("修改信息失败");
        }
	}

	/**
	 * 保存书籍
	 * @param entity 图书实体
	 * @author wangjn
	 * @date  2017年12月19日 上午10:32:10
	 */
	@Override
	public void saveObject(Book entity) {
		if(entity==null) {
            throw new ServiceException("保存对象不能为空");
        }
		int row = bookDao.insertObject(entity);
		if(row<=0) {
            throw new ServiceException("插入失败");
        }
	}

	/**
	 * 查询所有书籍
	 * @return list
	 * @author wangjn
	 * @date  2017年12月19日 上午10:32:47
	 */
	@Override
	public List<Book> findObjects() {
		return bookDao.findObjects();
	}
	
	/**
	 * 查询分页信息
	 * @param name 用户输入的关键字
	 * @param state 图书的状态
	 * @param pageCurrent 当前页码
	 * @author wangjn
	 * @date  2017年12月19日 下午3:25:25
	 */
	@Override
	public Map<String, Object> findPageObjects(String name, Integer state, int pageCurrent) {
		int rowCount = bookDao.getRowCount(name,state);
		//每一页的行数显示
		int pageSize = 6;
		int startIndex = (pageCurrent-1)*pageSize;
		//获取当前页数据
		List<Book> list = bookDao.findPageObjects(name,state,startIndex, pageSize);
		//封装分页信息
		PageObject pageObject = new PageObject();
		pageObject.setPageCurrent(pageCurrent);
		pageObject.setPageSize(pageSize);
		pageObject.setRowCount(rowCount);
		pageObject.setStartIndex(startIndex);
		//将信息封装到map
		Map<String,Object> map = new HashMap<String,Object>(2);
		map.put("list", list);
		map.put("pageObject", pageObject);
		return map;
	}

    /**
	 * 改变书籍的状态
	 * @param state 要改为的状态
	 * @param ids 需要更改状态的书籍id 格式:(1,2,3,4)
	 * @author wangjn
	 * @date 2017年12月19日 下午3:29:33
	 */
	@Override
	public void stateById(Integer state, String ids) {
		//1.对数据进行业务验证
		if(state!=0&&state!=1) {
            throw new ServiceException("state的值不合法:state:" + state);
        }
		if(StringUtils.isNullOrEmpty(ids)) {
            throw new ServiceException("ids的值不能为空");
        }
		//2.对参数数据进行处理
		String[] idArrary = ids.split(",");
		//3.执行业务更新操作
		int row = bookDao.stateById(state, idArrary);
		//4.验证结果的有效性
		if(row==0) {
            throw new ServiceException("修改无效");
        }
	}

    /**
     * 将符合id的图书删除
     * @param ids 格式(1,2,3,...)
     * @author wangjn
     * @date 2017/12/21 10:19
     */
	@Override
	public void deleteObject(String ids){
		//验证参数有效性
	    if(StringUtils.isNullOrEmpty(ids)){
	        throw new ServiceException("书籍id不能为空");
	    }
	    //将ids转换为符合要求格式
        String[] strs = ids.split(",");
        //执行删除操作
        int row = bookDao.deleteObject(strs);
        //验证结果
        if(0==row){
            throw new ServiceException("删除失败");
        }
	}

}
