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
 * Description: TODO(ͼ�����Ŀ���ģ��)
 * Copyright: Copyright (c) 2017
 * @author wangjn
 * @version 1.0
 * @date 2017��12��19�� ����10:15:34
 *
 */
@RequestMapping("/book/")
@Controller
public class BookController {

	/**
	 * ע��ͼ�����ķ����ģ��
	 */
	@Resource
	private BookService bookService;

	/**
	 * ����ͼ��༭����
	 * @author wangjn
	 * @date 2017/12/21 16:27
	 */
    @RequestMapping("editUI")
    public String editUI(){
        return "book/book_edit";
    }

	/**
	 *
	 * ����ͼ�����ҳ��
	 * @return String
	 * @author wangjn
	 * @date 2017��12��19�� ����10:18:09
	 */
	@RequestMapping("listUI")
	public String listUI(){
		return "book/book_list";
	}

	/**
	 *
	 * ��������ͼ����Ϣ
	 * @author wangjn
	 * @date 2017��12��19�� ����10:19:03
	 */
	@RequestMapping("doGetObjects")
	@ResponseBody
	public JsonResult doGetObjects(){
		List<Book> list = bookService.findObjects();
		return new JsonResult(list);
	}

	/**
	 *
	 * ����ҳ����Ϣ������ǰҳͼ�����ݺ�ҳ����Ϣ
	 * @param name �û�����Ĳ�ѯ�ؼ���
	 * @param state ͼ���״̬
	 * @param pageCurrent ��ǰҳ
	 * @author wangjn
	 * @date 2017��12��19�� ����10:19:54
	 */
	@RequestMapping("doGetPageObjects")
	@ResponseBody
	public JsonResult doGetPageObjects(String name,Integer state,Integer pageCurrent){
		Map<String,Object> map = bookService.findPageObjects(name,state,pageCurrent);
		return new JsonResult(map);
	}

	/**
     * ��Ӧͼ��ɾ������
	 * @param ids �û�ѡ�е�ͼ��id ��ʽ(1,2,3,...)
	 * @author wangjn
	 * @date 2017/12/21 11:06
	 */
	@RequestMapping("doDeleteObjects")
    @ResponseBody
	public JsonResult doDeleteObjects(String ids){
		//��������Ч��
		if (StringUtils.isNullOrEmpty(ids)){
			return new JsonResult(new ControllerException("ѡ��ͼ�鲻��Ϊ��"));
		}
		//ִ��ɾ������
		try {
			bookService.deleteObject(ids);
		}catch (ServiceException e){
			return new JsonResult(e);
		}
		//ִ�гɹ������ؽ��
		return new JsonResult();
	}

	/**
     * ��Ӧ����ͼ������
	 * @param entity ͼ��ʵ��
	 * @author wangjn
	 * @date 2017/12/21 17:50
	 */
	@RequestMapping("doSaveObject")
	@ResponseBody
	public JsonResult doSaveObject(Book entity){
	    if(null==entity){
	        return new JsonResult(new ControllerException("����ͼ�鲻��Ϊ��"));
        }
        try {
            bookService.saveObject(entity);
        } catch (ServiceException e) {
            return new JsonResult(e);
	    }
        return new JsonResult("����ͼ��ɹ�");
    }

    /**
     * ��Ӧ����ͼ������
     * @param entity ͼ��ʵ��
     * @author wangjn
     * @date 2017/12/21 17:50
     */
    @RequestMapping("doUpdateObject")
    @ResponseBody
    public JsonResult doUpdateObject(Book entity){
        if(null==entity){
            return new JsonResult(new ControllerException("�޸�ͼ�鲻��Ϊ��"));
        }
        try {
            bookService.updateObject(entity);
        } catch (ServiceException e) {
            return new JsonResult(e);
        }
        return new JsonResult("�޸�ͼ��ɹ�");
    }

    /**
     * ��������ͼ��id���ҷ���ͼ����Ϣ
     * @param bId ͼ��id
     * @author wangjn
     * @date 2017/12/22 11:17
     */
    @RequestMapping("doGetObjectById")
    @ResponseBody
    public JsonResult doGetObjectById(Integer bId){
        if(null==bId){
            throw new ControllerException("ͼ��id����Ϊ��");
        }
        Book entity = bookService.findObjectById(bId);
        if(null==entity){
            throw new ControllerException("��ѯͼ�鲻���ڣ������޸�");
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
