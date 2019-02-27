package Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * Global Fellows, Penn State Altoona
 * @author: Hyokyung Choi, Jiyoon Park
 * OS: Windows 10 pro
 * Framework: IntelliJ - Spring MVC
 * Database: Sqlite3
 * Server: Apache Tomcat
 * Web: jsp
 * Browse: MS Explorer
 * Date: 01/07/2019-03/01/2019
*/

@org.springframework.stereotype.Controller
public class MediaController {

    String Path = "C:\\Users\\pss\\Desktop\\MediaStorage\\"; // file path, you can change this path to your environment
    String url="";

    @RequestMapping(value="/", method=RequestMethod.GET)
    public String mainPage(){
        return "index";
    }

    @RequestMapping(value="/description/{idS}", method=RequestMethod.GET)
    public String showDescription(@PathVariable("idS") String idS, HttpServletRequest request){

        System.out.println("ID Get Success: " + idS);

        try {
            Database database = new Database();

            String query1 = String.format("SELECT description FROM media WHERE id=\"%s\"", idS);
            ResultSet rs1 = database.executeQuery(query1);
            String description = rs1.getString("description");

            String query2 = String.format("SELECT title FROM media WHERE id=\"%s\"", idS);
            ResultSet rs2 = database.executeQuery(query2);
            String title = rs2.getString("title");

            String query3 = String.format("SELECT id FROM media WHERE id=\"%s\"", idS);
            ResultSet rs3 = database.executeQuery(query3);
            String id = rs3.getString("id");

            request.setAttribute("description", description);
            request.setAttribute("title", title);
            request.setAttribute("id", id);

            rs1.close();
            rs2.close();
            rs3.close();

            database.commit();
            System.out.println("Get description Success.");
            database.close();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "showDescription";
    }

    @RequestMapping(value="/mediaS", method=RequestMethod.GET)
    public String selectMedia(HttpServletRequest request){

        List<String> titleS = new ArrayList<>();
        List<String> idS = new ArrayList<>();

        try {
            Database database = new Database();
            String query = String.format("SELECT * FROM media");
            ResultSet rs = database.executeQuery(query);

            while (rs.next()) {
                String title = rs.getString("title");
                String id = rs.getString("id");
                titleS.add(title);
                idS.add(id);
            }
            database.commit();

            request.setAttribute("titleS", titleS);
            request.setAttribute("idS", idS);

            System.out.println("File Select Success.");
            rs.close();
            database.close();

        } catch (Exception e) {
            e.printStackTrace();
        } return "selectResult";
    }

    @RequestMapping(value="/mediaL", method=RequestMethod.GET)
    public String mainUploadPage(){
        return "upload";
    }

    @RequestMapping(value="/mediaL", method=RequestMethod.POST)
    public String uploadMedia(HttpServletRequest request, HttpServletResponse response, @RequestParam("files") MultipartFile files) throws IOException {

        String originalFilename = files.getOriginalFilename(); // ex) fileName.jpg
        String extension = originalFilename.substring(originalFilename.lastIndexOf(".")); // .extension
        String existResult = ""; // y or n

        String rename = getMD5(files, response) + extension; // ex) {MD5}.jpg
        System.out.println("Get MD5 Hash success!");
        String fullPath = Path + rename;

        // initialize the data
        String title = request.getParameter("titleL");
        String description = request.getParameter("descriptionL");
        Integer media_type_id = 0;

        // setup the media_type_id based on the extension
        switch(extension) {
           //photo
            case ".jpg": case ".JPG": case ".JPEG": case ".png": case ".PNG": case ".gif": case ".GIF":
                media_type_id = 1;
                break;
            //video
            case ".wmv": case ".WMV": case ".avi": case ".AVI": case ".mov": case ".MOV": case ".mp4": case ".MP4":
                media_type_id = 2;
                break;
            //audio
            case ".mp3": case ".MP3": case ".wav": case ".WAV": case ".wma": case ".WMA":
                media_type_id = 3;
                break;
            //document
            case ".txt": case ".hwp": case ".doc": case ".docx": case ".xml": case ".pdf":
                media_type_id = 4;
                break;
        }

        existResult = checkHashExist(Path, fullPath, existResult);

        // If file does not exist, store to the storage and inset to the database
        if (!files.isEmpty() && existResult.equals("n") && media_type_id != 0) {
            try {
                byte[] bytes = files.getBytes();
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
                stream.write(bytes);
                stream.close();

                Database database = new Database();
                String query = String.format("INSERT INTO media (\"title\", \"description\", \"filename\", \"media_type_id\") " +
                        "VALUES (\"%s\", \"%s\", \"%s\", \"%d\")", title, description, rename, media_type_id);
                database.executeUpdate(query);
                database.commit();

                System.out.println("File Upload to the DB success.");
                database.close();

                System.out.println("Path is - "+fullPath);

                response.setContentType("text/html; charset=UTF-8");
                PrintWriter out= response.getWriter();
                out.println("<script>alert('File Upload Success!'); history.go(-1);history.go(-1);</script>");
                out.flush();

                return url;
            } catch (Exception e) {
                //e.printStackTrace();
                errorScript(response);
            }
        } else if (media_type_id == 0) {

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out= response.getWriter();
            out.println("<script>alert('Extension not permitted.'); history.go(-1);</script>");
            out.flush();

            return url; // Case: Not allowed File Extension
        } else if (existResult.equals("y")) {

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out= response.getWriter();
            out.println("<script>alert('File Already Exist.'); history.go(-1);</script>");
            out.flush();

            return url; // Case: Has File already exist
        }
        return "index";
    }

    // rename filename to MD5 hash value
    public String getMD5(MultipartFile files, HttpServletResponse response) throws IOException {
        StringBuffer sbuf = new StringBuffer();
        try {
            MessageDigest mDigest = MessageDigest.getInstance("MD5");
            mDigest.update(files.getBytes());
            byte[] msgStr = mDigest.digest() ;

            for(int i = 0; i < msgStr.length; i++)
            {
                String tmpEncTxt = Integer.toHexString((int)msgStr[i] & 0x00ff) ;
                sbuf.append(tmpEncTxt) ;
            }
        } catch(Exception e) {
            //e.printStackTrace();
            errorScript(response);
        }
        return sbuf.toString().replaceAll("-", "") ;
    }

    // check if the hash already exist
    private String checkHashExist(String Path, String fullPath, String existResult) {
        List<File> dirList=getDirFileList(Path);
        String dirListString= dirList.toString();
        String dirListString2=dirListString.substring(1,(dirListString.length()-1));
        String[] fileList = dirListString2.split(", ");
        String result = "";

        for(int i = 0 ; i < fileList. length; i++){

            if(fileList[i].equals(fullPath)){  //if there is the existing hash
                existResult = "y";
                break;
            } else {
                existResult = "n";
            }
        }
        result = existResult;
        System.out.println("File Hash Checking Done: " + result);
        return result;
    }

    // read files from the folder directory
    private List<File> getDirFileList(String Path) {
        List<File> dirFileList=null;
        File dir=new File(Path);

        if(dir.exists()){
            File[] files=dir.listFiles();
            dirFileList= Arrays.asList(files); //convert arrays to List
        }
        return dirFileList;
    }

    @RequestMapping(value="/mediaU/{id}", method=RequestMethod.GET)
    public String mainUpdatePage(@PathVariable("id") String idU, HttpServletRequest request){
        request.setAttribute("sendID", idU);
        return "update";
    }

    @RequestMapping(value="/mediaU/{id}", method=RequestMethod.POST)
    public String updateMedia(@PathVariable("id") String idU, HttpServletRequest request, HttpServletResponse response) throws IOException {

        String titleU = request.getParameter("titleU");
        String descriptionU = request.getParameter("descriptionU");
        System.out.println("Get id, title, description Success.");

        try {
            Database database = new Database();
            String query = String.format("UPDATE media SET title = \"%s\", description = \"%s\" WHERE id = \"%s\"", titleU, descriptionU, idU);
            database.executeUpdate(query);
            database.commit();
            database.close();

            System.out.println("File Update Success: " + idU);

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out= response.getWriter();
            out.println("<script>alert('File Update Success!'); history.go(-1); history.go(-1); history.go(-1); </script>");
            out.flush();

        } catch (Exception e) {
            //e.printStackTrace();
            errorScript(response);
        } return url;
    }

    @RequestMapping(value="/description/mediaD/{id}", method=RequestMethod.POST)
    public String deleteMedia(@PathVariable("id") String idD, HttpServletRequest request, HttpServletResponse response) throws IOException {

//        String idD = request.getParameter("id");
//        Integer idFinal = Integer.parseInt(idD);
        System.out.println("ID Get Success: " + idD);

        try {
            Database database = new Database();

            // get the filename to delete the file in the file path
            String query1 = String.format("SELECT filename FROM media WHERE id=\"%s\"", idD);
            ResultSet rs = database.executeQuery(query1);
            String filename = rs.getString("filename");

            rs.close();

            boardFileDelete(filename); //delete file from the project server directory
            String query2 = String.format("DELETE FROM media WHERE id=\"%s\"", idD);
            database.executeUpdate(query2);

            database.commit();
            System.out.println("DELETE Success.");
            database.close();

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out= response.getWriter();
            out.println("<script>alert('File Delete Success!'); history.go(-1); history.go(-1);</script>");
            out.flush();

        } catch (SQLException e) {
            //e.printStackTrace();
            errorScript(response);
        } catch (ClassNotFoundException e) {
            //e.printStackTrace();
            errorScript(response);
        } catch (IOException e) {
            //e.printStackTrace();
            errorScript(response);
        }
        return url;
    }

    // delete the file at the file path
    public String boardFileDelete(String filename){

        String path = Path + filename; // File Path
        File file = new File(path);

        if(file.exists() == true){
            file.delete();
        }
        return null;
    }

    public void errorScript(HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out= response.getWriter();
        out.println("<script>alert('Error Occurred'); history.go(-1);</script>");
        out.flush();
    }
}