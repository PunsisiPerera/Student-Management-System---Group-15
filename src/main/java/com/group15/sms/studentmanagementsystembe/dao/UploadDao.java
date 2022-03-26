package com.group15.sms.studentmanagementsystembe.dao;

import com.google.gson.JsonArray;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.*;

import java.io.File;
import java.io.IOException;

public class UploadDao {
    public JsonArray readexcel(String file_path){
        JsonArray array = new JsonArray();

        try {

            Workbook workbook = WorkbookFactory.create(new File(file_path));
            Sheet sheet = workbook.getSheetAt(0);//Reads First Excel

            DataFormatter dataFormatter = new DataFormatter();

            for(Row row : sheet){
                JsonArray value = new JsonArray();
                for (Cell cell : row){
                    String cell_value = dataFormatter.formatCellValue(cell);
                    value.add(cell_value);
                }
                array.add(value);
            }
            workbook.close();
        } catch (EncryptedDocumentException | IOException e) {
            e.printStackTrace();
        }

        return array;
    }
}