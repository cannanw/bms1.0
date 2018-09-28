package cn.wbms.bms.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author wangjn
 * @version 1.0
 * @Title: 通用格式转换工具类
 * @Description: 包含项目通用格式转换方法
 */
public class FormatUtil {

    private static SimpleDateFormat sdf = null;

    static {
        sdf = new SimpleDateFormat("yyyy/MM/dd");
    }

    public static String dateFormat(Date lDate){
        if (lDate == null) return "";
        return sdf.format(lDate);
    }
}
