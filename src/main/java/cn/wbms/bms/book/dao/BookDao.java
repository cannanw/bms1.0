package cn.wbms.bms.book.dao;

import cn.wbms.bms.book.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**ͼ��ģ��־ò����*/
public interface BookDao {
    
    /**
     * 
     * @Title: findObjectById
     * @Description: TODO(����id����ͼ����Ϣ)
     * @param bId ͼ��id
     * @return Book ͼ��ʵ��
     * @author wangjn
     * @version 1.0
     * @createtime 2017��12��19�� ����4:04:19
     */
	Book findObjectById(Integer bId);
	
	/**
	 * ����һ��ͼ����Ϣ
	 * @param entity
	 * @return
	 */
	int updateObject(Book entity);
	
	/**
	 * ����һ��ͼ��
	 * @param entity
	 * @return
	 */
	int insertObject(Book entity);
	
	/**
	 * ɾ��ͼ����Ϣ
	 * @param ids
	 * @return
	 */
	int deleteObject(@Param("ids") String[] ids);
	
	/**��ȡ����ͼ����Ϣ*/
	List<Book> findObjects();
	/**
	 * �Է�ҳ��ʽ��ȡ����ͼ����Ϣ
	 * @Param name ��ѯʱ�û������
	 * @Param state ��ѯʱͼ���״̬
	 * @param startIndex ��ҳ��ѯ����ʼλ��
	 * @param pageSize ÿһҳ�Ĵ�С
	 * @return
	 */
	List<Book> findPageObjects(
			@Param("name")String name,
			@Param("state")Integer state,
			@Param("startIndex")int startIndex,
			@Param("pageSize")int pageSize);

	/**
	 * ��ȡ���м�¼��
	 * @param name
	 * @param state
	 * @return
	 */
	int getRowCount(
			@Param("name")String name,
			@Param("state")Integer state);
	/**���û�����ͼ����Ϣ*/
	int stateById(
			@Param("state")Integer state,
			@Param("ids")String[] ids);
}
