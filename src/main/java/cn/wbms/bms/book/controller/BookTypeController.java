package cn.wbms.bms.book.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import cn.wbms.bms.common.exception.ServiceException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wbms.bms.common.web.JsonResult;
import cn.wbms.bms.book.entity.BookType;
import cn.wbms.bms.book.service.BookTypeService;
@RequestMapping("/type/")
@Controller
public class BookTypeController {
	@Resource  
	private BookTypeService bookTypeService;
	@RequestMapping("listUI")
	public String listUI(){
		return "book/type_list";
	}
	@RequestMapping("editUI")
	public String editUI(){
		return "book/type_edit";
	}
	@RequestMapping("doFindGridTreeObjects")
	@ResponseBody
	public JsonResult doFindGridTreeObjects(){
		List<Map<String,Object>> list=
		bookTypeService.findGridTreeObjects();
		return new JsonResult(list);
	}
	@RequestMapping("doFindZtreeObjects")
	@ResponseBody
	public JsonResult doFindZtreeObjects(){
		List<Map<String,Object>> list=
		bookTypeService.findZtreeNodes();
		return new JsonResult(list);
	}
	
	
	/**执行删除动作
	 * @param id 为页面上选中的某条记录的id值
	 */
	@RequestMapping("doDeleteObject")
	@ResponseBody
	public JsonResult doDeleteObject(
			Integer id){
		bookTypeService.deleteObject(id);
		return new JsonResult();
		//this.state=1
		//this.message=ok
	}
	@RequestMapping("doSaveObject")
	@ResponseBody
	public JsonResult doSaveObject(
			BookType entity){
		bookTypeService.saveObject(entity);
		return new JsonResult();
	}
	@RequestMapping("doFindObjectById")
	@ResponseBody
	public JsonResult doFindObjectById(
			Integer id){
		
		Map<String,Object> type=
		bookTypeService.findMapById(id);
		return new JsonResult(type);
	}
	/**执行更新操作*/
	@RequestMapping("doUpdateObject")
	@ResponseBody
	public JsonResult doUpdateObject(
			BookType entity){
		System.out.println("Controller.id="+entity.getId());
		try{
            bookTypeService.updateObject(entity);
        }catch (ServiceException e){
            return new JsonResult(e);
        }
		return new JsonResult();
	}
}

