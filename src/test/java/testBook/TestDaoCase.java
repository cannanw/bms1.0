package testBook;

import cn.wbms.bms.system.entity.SysUser;
import cn.wbms.bms.system.service.impl.SysUserServiceImpl;
import org.junit.Test;

import cn.wbms.bms.book.dao.BookDao;
import cn.wbms.bms.book.entity.Book;

import java.util.List;


public class TestDaoCase extends TestBase{
	/**
	 * 测试查找书籍
	 */
	@Test
	public void testFindBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		Book book = bookDao.findObjectById(1);
		System.out.println(book);
	}
	/**
	 * 测试增加书籍
	 */
	@Test
	public void testInsertBook(){
		Book book = new Book();
		book.setIsbn("9787514346404");
		book.setbName("人间失格");
		book.setbClass("小说");
		book.setAuthor("[日]太宰治");
		BookDao bookDao = ctx.getBean(BookDao.class);
		int i = bookDao.insertObject(book);
		System.out.println("更新的记录数为:"+i);
	}
	/**
	 * 测试删除书籍
	 */
	@Test
	public void testDeleteBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		String[] strs = {"11","12"};
		int state = bookDao.deleteObject(strs);
		System.out.println(state);
	}
	/**
	 * 测试更新书籍信息
	 */
	@Test
	public void testUpdateBook(){
		BookDao bookDao = ctx.getBean(BookDao.class);
		Book book = bookDao.findObjectById(1);
		System.out.println(book);
		book.setBookshelfNum("A-2-24");
		int state = bookDao.updateObject(book);
		System.out.println("更新记录数为:"+state);
	}
	/**
	 * 测试查找所有
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
