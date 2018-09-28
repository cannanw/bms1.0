package testCommon;

import org.junit.Test;

import java.util.UUID;

/**
 * @author wangjn
 * @version 1.0
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}()
 * @createtime ${date} ${time}
 */
public class TestCommon {
    @Test
    public void test1(){
        System.out.println(UUID.randomUUID().toString().replace("-",""));
    }

    /**
     * 一个字符串s是LUCKY当且仅当s中不同字符的数目是一个斐波那契数。
     * 给定一个只包含小写字母的字符串，按字典顺序输出所有幸运的非空子串。
     * 相同的子串应该打印一次。
     * 输入描述：一个不超过100个小写字母的字符串。
     * 输出描述：按字典顺序输出幸运的子串。每行一个。相同的子串应该打印一次。
     *  输入例子:
         aabcd

         输出例子:
         a
         aa
         aab
         aabc
         ab
         abc
         b
         bc
         bcd
         c
         cd
         d
     * @param old
     * @return
     */
    public String[] getLuckyString(String old){
        String[] lucky = {};

        return lucky;
    }

    @Test
    public void testLuckyString(){
        String old = "aabcd";
        String[] lucky = getLuckyString(old);
        for(String s:lucky){
            System.out.println(s);
        }
    }
}
