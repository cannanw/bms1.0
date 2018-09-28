package testBook;

import cn.wbms.bms.system.entity.SysUser;
import cn.wbms.bms.system.service.impl.SysUserServiceImpl;
import org.junit.Test;

import cn.wbms.bms.book.dao.BookDao;
import cn.wbms.bms.book.entity.Book;

import java.util.List;


public class TestDaoCase extends TestBase{
	/**
	 * ���Բ����鼮
	 */
	@Test
	public void testFindBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		Book book = bookDao.findObjectById(1);
		System.out.println(book);
	}
	/**
	 * ���������鼮
	 */
	@Test
	public void testInsertBook(){
		Book book = new Book();
		book.setIsbn("9787514346404");
		book.setbName("�˼�ʧ��");
		book.setbClass("С˵");
		book.setAuthor("[��]̫����");
		BookDao bookDao = ctx.getBean(BookDao.class);
		int i = bookDao.insertObject(book);
		System.out.println("���µļ�¼��Ϊ:"+i);
	}
	/**
	 * ����ɾ���鼮
	 */
	@Test
	public void testDeleteBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		String[] strs = {"11","12"};
		int state = bookDao.deleteObject(strs);
		System.out.println(state);
	}
	/**
	 * ���Ը����鼮��Ϣ
	 */
	@Test
	public void testUpdateBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		Book book = bookDao.findObjectById(1);
		System.out.println(book);
		book.setBookshelfNum("A-2-24");
		int state = bookDao.updateObject(book);
		System.out.println("���¼�¼��Ϊ:"+state);
	}
	/**
	 * ���Բ�������
	 */
	@Test
	public void testFindObjects(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		List<Book> list = bookDao.findObjects();
		for(Book book : list){
			System.out.println(book);
		}
	}

}
