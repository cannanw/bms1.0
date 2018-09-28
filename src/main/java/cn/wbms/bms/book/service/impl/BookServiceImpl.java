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
 * Description: TODO(ͼ������ҵ���ģ��)
 * Copyright: Copyright (c) 2017
 * @author wangjn
 * @version 1.0
 * @date 2017��12��19�� ����10:29:30
 *
 */
@Service("bookService")
public class BookServiceImpl implements BookService{
    /**
     * ע��ͼ��־ò�
     */
	@Resource
	private BookDao bookDao;
	
	/**
	 * 
	 * ����id�����鼮
	 * @param bId ͼ��id
	 * @author wangjn
	 * @date  2017��12��19�� ����10:30:08
	 */
	@Override
	public Book findObjectById(Integer bId) {
		if(bId==null) {
            throw new ServiceException("id����Ϊ��");
        }
		Book book = bookDao.findObjectById(bId);
		if(book==null) {
            throw new ServiceException("û��bId=" + bId + "��ͼ��");
        }
		return book;
	}

	/**
	 *
	 * ���¸��鼮
	 * @param entity �鼮ʵ��
	 * @author wangjn
	 * @date  2017��12��19�� ����10:31:31
	 */
	@Override
	public void updateObject(Book entity) {
		if(entity==null) {
            throw new ServiceException("�޸���ϢΪ��");
        }
		int row = bookDao.updateObject(entity);
		if(row<=0) {
            throw new ServiceException("�޸���Ϣʧ��");
        }
	}

	/**
	 * �����鼮
	 * @param entity ͼ��ʵ��
	 * @author wangjn
	 * @date  2017��12��19�� ����10:32:10
	 */
	@Override
	public void saveObject(Book entity) {
		if(entity==null) {
            throw new ServiceException("���������Ϊ��");
        }
		int row = bookDao.insertObject(entity);
		if(row<=0) {
            throw new ServiceException("����ʧ��");
        }
	}

	/**
	 * ��ѯ�����鼮
	 * @return list
	 * @author wangjn
	 * @date  2017��12��19�� ����10:32:47
	 */
	@Override
	public List<Book> findObjects() {
		return bookDao.findObjects();
	}
	
	/**
	 * ��ѯ��ҳ��Ϣ
	 * @param name �û�����Ĺؼ���
	 * @param state ͼ���״̬
	 * @param pageCurrent ��ǰҳ��
	 * @author wangjn
	 * @date  2017��12��19�� ����3:25:25
	 */
	@Override
	public Map<String, Object> findPageObjects(String name, Integer state, int pageCurrent) {
		int rowCount = bookDao.getRowCount(name,state);
		//ÿһҳ��������ʾ
		int pageSize = 6;
		int startIndex = (pageCurrent-1)*pageSize;
		//��ȡ��ǰҳ����
		List<Book> list = bookDao.findPageObjects(name,state,startIndex, pageSize);
		//��װ��ҳ��Ϣ
		PageObject pageObject = new PageObject();
		pageObject.setPageCurrent(pageCurrent);
		pageObject.setPageSize(pageSize);
		pageObject.setRowCount(rowCount);
		pageObject.setStartIndex(startIndex);
		//����Ϣ��װ��map
		Map<String,Object> map = new HashMap<String,Object>(2);
		map.put("list", list);
		map.put("pageObject", pageObject);
		return map;
	}

    /**
	 * �ı��鼮��״̬
	 * @param state Ҫ��Ϊ��״̬
	 * @param ids ��Ҫ����״̬���鼮id ��ʽ:(1,2,3,4)
	 * @author wangjn
	 * @date 2017��12��19�� ����3:29:33
	 */
	@Override
	public void stateById(Integer state, String ids) {
		//1.�����ݽ���ҵ����֤
		if(state!=0&&state!=1) {
            throw new ServiceException("state��ֵ���Ϸ�:state:" + state);
        }
		if(StringUtils.isNullOrEmpty(ids)) {
            throw new ServiceException("ids��ֵ����Ϊ��");
        }
		//2.�Բ������ݽ��д���
		String[] idArrary = ids.split(",");
		//3.ִ��ҵ����²���
		int row = bookDao.stateById(state, idArrary);
		//4.��֤�������Ч��
		if(row==0) {
            throw new ServiceException("�޸���Ч");
        }
	}

    /**
     * ������id��ͼ��ɾ��
     * @param ids ��ʽ(1,2,3,...)
     * @author wangjn
     * @date 2017/12/21 10:19
     */
	@Override
	public void deleteObject(String ids){
		//��֤������Ч��
	    if(StringUtils.isNullOrEmpty(ids)){
	        throw new ServiceException("�鼮id����Ϊ��");
	    }
	    //��idsת��Ϊ����Ҫ���ʽ
        String[] strs = ids.split(",");
        //ִ��ɾ������
        int row = bookDao.deleteObject(strs);
        //��֤���
        if(0==row){
            throw new ServiceException("ɾ��ʧ��");
        }
	}

}
