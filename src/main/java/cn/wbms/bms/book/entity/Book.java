package cn.wbms.bms.book.entity;

import cn.wbms.bms.common.web.JsonDateTypeConvert;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
/**
 * book实体类
 * @author CANAAN
 *
 */
public class Book implements Serializable{

	private static final long serialVersionUID = -275922131270811186L;
	/**
	 * 书籍id
	 */
	private Integer bId;
	/**
	 * 书籍ISBN号
	 */
	private String isbn;
	/**
	 * 书名
	 */
	private String bName;
	/**
	 * 书籍类别
	 */
	private String bClass;
	/**
	 * 作者
	 */
	private String author;
	/**
	 * 出版商
	 */
	private String press;
	/**
	 * 出版时间
	 * @DateTimeFormat注解用于定义日期格式
	 * 此格式需要与页面上传递的日期格式相同
	 * 否则有可能会出现400错误
	 * */
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date publishTime;
	/**
	 * 单价
	 */
	private Double price;
	/**
	 * 数量
	 */
	private Integer num;
	/**
	 * 书架号
	 */
	private String bookshelfNum;
	/**
	 * 状态 1为可借 0为不可借
	 */
	private Integer state;
	/**
	 * 书籍录入时间
	 */
	private Date createdTime;
	/**
	 * 修改时间
	 */
	private Date modifiedTime;
	/**
	 * 录入人
	 */
	private String createdUser;
	/**
	 * 修改人
	 */
	private String modifiedUser;
	
	
	public Integer getbId() {
		return bId;
	}
	public void setbId(Integer bId) {
		this.bId = bId;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbClass() {
		return bClass;
	}
	public void setbClass(String bClass) {
		this.bClass = bClass;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
    /**
     * 使用JsonSerialize注解的目的是
     * 将此值填充到json串时先按照指定格式进行转换*/
	@JsonSerialize(using=JsonDateTypeConvert.class)
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getBookshelfNum() {
		return bookshelfNum;
	}
	public void setBookshelfNum(String bookshelfNum) {
		this.bookshelfNum = bookshelfNum;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Date getModifiedTime() {
		return modifiedTime;
	}
	public void setModifiedTime(Date modifiedTime) {
		this.modifiedTime = modifiedTime;
	}
	public String getCreatedUser() {
		return createdUser;
	}
	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}
	public String getModifiedUser() {
		return modifiedUser;
	}
	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + ((bClass == null) ? 0 : bClass.hashCode());
		result = prime * result + ((bId == null) ? 0 : bId.hashCode());
		result = prime * result + ((bName == null) ? 0 : bName.hashCode());
		result = prime * result + ((bookshelfNum == null) ? 0 : bookshelfNum.hashCode());
		result = prime * result + ((createdTime == null) ? 0 : createdTime.hashCode());
		result = prime * result + ((createdUser == null) ? 0 : createdUser.hashCode());
		result = prime * result + ((isbn == null) ? 0 : isbn.hashCode());
		result = prime * result + ((modifiedTime == null) ? 0 : modifiedTime.hashCode());
		result = prime * result + ((modifiedUser == null) ? 0 : modifiedUser.hashCode());
		result = prime * result + ((num == null) ? 0 : num.hashCode());
		result = prime * result + ((press == null) ? 0 : press.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + ((publishTime == null) ? 0 : publishTime.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
            return true;
        }
		if (obj == null) {
            return false;
        }
		if (getClass() != obj.getClass()) {
            return false;
        }
		Book other = (Book) obj;
		if (author == null) {
			if (other.author != null) {
                return false;
            }
		} else if (!author.equals(other.author)) {
            return false;
        }
		if (bClass == null) {
			if (other.bClass != null) {
                return false;
            }
		} else if (!bClass.equals(other.bClass)) {
            return false;
        }
		if (bId == null) {
			if (other.bId != null) {
                return false;
            }
		} else if (!bId.equals(other.bId)) {
            return false;
        }
		if (bName == null) {
			if (other.bName != null) {
                return false;
            }
		} else if (!bName.equals(other.bName)) {
            return false;
        }
		if (bookshelfNum == null) {
			if (other.bookshelfNum != null) {
                return false;
            }
		} else if (!bookshelfNum.equals(other.bookshelfNum)) {
            return false;
        }
		if (createdTime == null) {
			if (other.createdTime != null) {
                return false;
            }
		} else if (!createdTime.equals(other.createdTime)) {
            return false;
        }
		if (createdUser == null) {
			if (other.createdUser != null) {
                return false;
            }
		} else if (!createdUser.equals(other.createdUser)) {
            return false;
        }
		if (isbn == null) {
			if (other.isbn != null) {
                return false;
            }
		} else if (!isbn.equals(other.isbn)) {
            return false;
        }
		if (modifiedTime == null) {
			if (other.modifiedTime != null) {
                return false;
            }
		} else if (!modifiedTime.equals(other.modifiedTime)) {
            return false;
        }
		if (modifiedUser == null) {
			if (other.modifiedUser != null) {
                return false;
            }
		} else if (!modifiedUser.equals(other.modifiedUser)) {
            return false;
        }
		if (num == null) {
			if (other.num != null) {
                return false;
            }
		} else if (!num.equals(other.num)) {
            return false;
        }
		if (press == null) {
			if (other.press != null) {
                return false;
            }
		} else if (!press.equals(other.press)) {
            return false;
        }
		if (price == null) {
			if (other.price != null) {
                return false;
            }
		} else if (!price.equals(other.price)) {
            return false;
        }
		if (publishTime == null) {
			if (other.publishTime != null) {
                return false;
            }
		} else if (!publishTime.equals(other.publishTime)) {
            return false;
        }
		if (state == null) {
			if (other.state != null) {
                return false;
            }
		} else if (!state.equals(other.state)) {
            return false;
        }
		return true;
	}
	@Override
	public String toString() {
		return "Book [bId=" + bId + ", isbn=" + isbn + ", bName=" + bName + ", bClass=" + bClass + ", author=" + author
				+ ", press=" + press + ", publishTime=" + publishTime + ", price=" + price + ", num=" + num
				+ ", bookshelfNum=" + bookshelfNum + ", state=" + state + ", createdTime=" + createdTime
				+ ", modifiedTime=" + modifiedTime + ", createdUser=" + createdUser + ", modifiedUser=" + modifiedUser
				+ "]";
	}
	
	
	
}
