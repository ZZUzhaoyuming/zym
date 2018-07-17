package zzu.zym.common.util;


import com.sun.jdi.PathSearchingVirtualMachine;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import zzu.zym.common.entity.Attendance;
import zzu.zym.common.entity.User;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/11/9.
 */
public class PoiUtil {

    public static void exportExcel(Class clasz,List data,String path) throws IllegalAccessException, IOException {
        //创建Excel表格对象
        HSSFWorkbook wb = new HSSFWorkbook();

        HSSFSheet sheet = wb.createSheet();

        HSSFRow row = sheet.createRow(0);

        Field[] fields = clasz.getDeclaredFields();
        //填充excel表格标题

        for (int i = 0; i < fields.length; i++) {

            HSSFCell cell = row.createCell(i);

            cell.setCellValue(fields[i].getName());
        }

        for (int i = 1; i <=data.size() ; i++) {

            HSSFRow row1 = sheet.createRow(i);

            Object object = data.get(i - 1);

            for (int j = 0; j <fields.length ; j++) {

                HSSFCell cell = row1.createCell(j);

                Field field = fields[j];
                field.setAccessible(true);

                cell.setCellValue(field.get(object).toString());

            }

        }

        wb.write(new File(path));

        wb.close();
    }



    public static List importExcel(Class clasz,FileInputStream io) throws IllegalAccessException, IOException, InstantiationException {

        //获得Excel表格对象
        HSSFWorkbook wb = new HSSFWorkbook(io);


        HSSFSheet sheet = wb.getSheetAt(0);

        ArrayList list = new ArrayList();

        Field[] fields = clasz.getDeclaredFields();

        for (int i = 1; i <=sheet.getLastRowNum(); i++) {

            // 吧row对象转换成User对象
            HSSFRow row = sheet.getRow(i);


            Object object = clasz.newInstance();

            for (int j = 0; j < fields.length; j++) {

                HSSFCell cell = row.getCell(j);


                Field field = fields[j];

                field.setAccessible(true);

                //判断对象属性类型 如果类型为Integer类型转换为Integer类型赋值
                //如果不是Integer类型转换为其他string类型赋值
                if(field.getType() == Integer.class){
                    field.set(object,new Integer(cell.toString()));
                }else{

                    field.set(object,cell.toString());
                }

            }

            list.add(object);
        }


        return list;
    }

}
