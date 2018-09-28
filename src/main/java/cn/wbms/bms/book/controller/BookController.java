package cn.wbms.bms.book.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import cn.wbms.bms.common.exception.ControllerException;
import cn.wbms.bms.common.exception.ServiceException;
import com.mysql.jdbc.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wbms.bms.book.entity.Book;
import cn.wbms.bms.book.service.BookService;
import cn.wbms.bms.common.web.JsonResult;
/**
 * 
 * Title: BookControllerf
 * Description: TODO(图书管理的控制模块)
 * Copyright: Copyright (c) 2017
 * @author wangjn
 * @version 1.0
 * @date 2017年12月19日 上午10:15:34
 *
 */
@RequestMapping("/book/")
@Controller
public class BookController {

	/**
	 * 注入图书管理的服务层模块
	 */
	@Resource
	private BookService bookService;

	/**
	 * 返回图书编辑界面
	 * @author wangjn
	 * @date 2017/12/21 16:27
	 */
    @RequestMapping("editUI")
    public String editUI(){
        return "book/book_edit";
    }

	/**
	 *
	 * 返回图书管理页面
	 * @return String
	 * @author wangjn
	 * @date 2017年12月19日 上午10:18:09
	 */
	@RequestMapping("listUI")
	public String listUI(){
		return "book/book_list";
	}

	/**
	 *
	 * 返回所有图书信息
	 * @author wangjn
	 * @date 2017年12月19日 上午10:19:03
	 */
	@RequestMapping("doGetObjects")
	@ResponseBody
	public JsonResult doGetObjects(){
		List<Book> list = bookService.findObjects();
		return new JsonResult(list);
	}

	/**
	 *
	 * 返回页面信息包括当前页图书数据和页面信息
	 * @param name 用户输入的查询关键字
	 * @param state 图书的状态
	 * @param pageCurrent 当前页
	 * @author wangjn
	 * @date 2017年12月19日 上午10:19:54
	 */
	@RequestMapping("doGetPageObjects")
	@ResponseBody
	public JsonResult doGetPageObjects(String name,Integer state,Integer pageCurrent){
		Map<String,Object> map = bookService.findPageObjects(name,state,pageCurrent);
		return new JsonResult(map);
	}

	/**
     * 相应图书删除请求
	 * @param ids 用户选中的图书id 格式(1,2,3,...)
	 * @author wangjn
	 * @date 2017/12/21 11:06
	 */
	@RequestMapping("doDeleteObjects")
    @ResponseBody
	public JsonResult doDeleteObjects(String ids){
		//检测参数有效性
		if (StringUtils.isNullOrEmpty(ids)){
			return new JsonResult(new ControllerException("选中图书不能为空"));
		}
		//执行删除操作
		try {
			bookService.deleteObject(ids);
		}catch (ServiceException e){
			return new JsonResult(e);
		}
		//执行成功，返回结果
		return new JsonResult();
	}

	/**
     * 响应插入图书请求
	 * @param entity 图书实体
	 * @author wangjn
	 * @date 2017/12/21 17:50
	 */
	@RequestMapping("doSaveObject")
	@ResponseBody
	public JsonResult doSaveObject(Book entity){
	    if(null==entity){
	        return new JsonResult(new ControllerException("插入图书不能为空"));
        }
        try {
            bookService.saveObject(entity);
        } catch (ServiceException e) {
            return new JsonResult(e);
	    }
        return new JsonResult("插入图书成功");
    }

    /**
     * 响应更新图书请求
     * @param entity 图书实体
     * @author wangjn
     * @date 2017/12/21 17:50
     */
    @RequestMapping("doUpdateObject")
    @ResponseBody
    public JsonResult doUpdateObject(Book entity){
        if(null==entity){
            return new JsonResult(new ControllerException("修改图书不能为空"));
        }
        try {
            bookService.updateObject(entity);
        } catch (ServiceException e) {
            return new JsonResult(e);
        }
        return new JsonResult("修改图书成功");
    }

    /**
     * 用于依据图书id查找返回图书信息
     * @param bId 图书id
     * @author wangjn
     * @date 2017/12/22 11:17
     */
    @RequestMapping("doGetObjectById")
    @ResponseBody
    public JsonResult doGetObjectById(Integer bId){
        if(null==bId){
            throw new ControllerException("图书id不能为空");
        }
        Book entity = bookService.findObjectById(bId);
        if(null==entity){
            throw new ControllerException("查询图书不存在，不可修改");
        }
        return new JsonResult(entity);
    }

    /**
     * var params={
     * "checkedIds":checkedId,
     * "valid":valid}
     *
     * */
    @RequestMapping("doStateById")
    @ResponseBody
    public JsonResult doStateById(String checkedIds, Integer state){
        System.out.println("checkedIds="+checkedIds);
        try{
            bookService.stateById(state,checkedIds );
        }catch(ServiceException e){
            return new JsonResult(e);
        }
        return new JsonResult();
        //this.message="ok"
        //this.state=SUCCESS
    }
}
