package com.wellsoft.xxbs.test;

import com.wellsoft.xxbs.common.utils.DateUtils;
import com.wellsoft.xxbs.common.utils.IdcardUtils;
import com.wellsoft.xxbs.modules.sys.service.SystemService;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class MyTest {
    public static void main(String[] args) {
        /*String  a = SystemService.entryptPassword("123456");
        System.out.println(a);
        String aa = "21a47b0c974b3b3b881dfd0568658c7f345efb1d6257a89bfd5a8fb2";*/

     /*   String content = "1527281995060842145";

        String pattern = "(^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)|(^[1-9]\\d{5}\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{2}$)";

        boolean isMatch = Pattern.matches(pattern, content);
        System.out.println(isMatch);
*/
//        String d= null;
//        String[] split = d.split(",");
//        System.out.println(split.length);
//        for(String a :split){
//            System.out.println(a);
//        }


//        ArrayList<String> list = new ArrayList<String>();
//        list.add("1");
//        list.add("2");
//        list.add("3");
//        for(int i = 0;i < list.size();i++){
//            list.set(i,"aaaaa");
//        }
//
//        System.out.println(list);

        Date date = new Date();
//        Date date1 = DateUtils.addDays(date, 10);
        System.out.println("现在的时间是：   "+date);


        Date date1 = DateUtils.addYears(date, -100);
        System.out.println("addYears的时间是：   "+date1);

    }



    //验证身份证号
    public static Boolean identityCardValidate(String identityCard){
        String pattern = "(^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)|(^[1-9]\\d{5}\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{2}$)";
        boolean isMatch = Pattern.matches(pattern, identityCard);
        return isMatch;
    }

    //验证手机是否符合规定要求
    public static boolean clickMobile(String mobile){
        String str="^((13[0-9])|(15[^4,\\D])|(14[57])|(17[0-9])|(18[0,0-9]))\\d{8}$";
        boolean falg=false;

        Pattern pattern = Pattern.compile(str);
        falg=pattern.matcher(mobile).matches();

        return falg;
    }

    //验证邮箱是否符合规定要求
    public static boolean clickMail(String email){
        String str="^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
        boolean falg=false;
        Pattern pattern = Pattern.compile(str);
        falg=pattern.matcher(email).matches();
        return falg;
    }


}
