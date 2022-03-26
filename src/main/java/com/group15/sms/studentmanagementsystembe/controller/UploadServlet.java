package com.group15.sms.studentmanagementsystembe.controller;

import com.google.gson.JsonArray;
import com.group15.sms.studentmanagementsystembe.dao.UploadDao;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "Servlet", value = "/Servlet")
public class UploadServlet extends HttpServlet {

    File file = null;
    int maxFilesize = 1024*1024;
    int maxBuffsize = 1024*1024;
    String fileStorepath = "C:\\Users\\Gunawardana\\Documents";
    String tempPath = "C:\\Users\\Gunawardana\\Documents";
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();


        //logic for upload file
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        diskFileItemFactory.setSizeThreshold(maxBuffsize);
        diskFileItemFactory.setRepository(new File(tempPath));

        ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
        upload.setSizeMax(maxFilesize);
        try {

            List fileItem = upload.parseRequest(request);
            Iterator iterator = fileItem.iterator();

            while (iterator.hasNext()){
                FileItem file_Item = (FileItem)  iterator.next();
                if(!file_Item.isFormField()){
                    String  file_name = file_Item.getName();
                    file = new File(fileStorepath + "\\" + file_name);
                    file_Item.write(file);
                }
            }
            UploadDao readExcelFile = new UploadDao();
            JsonArray array = readExcelFile.readexcel(file.getAbsolutePath());
            out.print(array);
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

