/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.helper;
// these are libraries which help us to read file linke png, jpeg, xls,word.
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author NGROX
 */
public class Helper { //we make a helper class that has 2 methods one is deleteFile which delete the image
    public static boolean deleteFile(String path)
    {
        boolean f = false;
        try {
            File file = new File(path);
            f = file.delete();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public static boolean saveFile(InputStream is,String path) //this mathod save the image and help to get the image name, directory .
    {
        boolean f = false;
        try {
            byte b[] = new byte[is.available()];
            is.read(b);
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(b);
            fos.flush();
            fos.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
