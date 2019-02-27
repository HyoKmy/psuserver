package Controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author matthew
 */
public abstract class Log
{
    //private static Log sharedInstance;
    private static PrintWriter printWriter = null;
    private static SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd'T'HH.mm.ss.SSS");

    //private Log (){}
    
    //Java allows a static block so forget singleton pattern
    static 
    {
        try
        {
            //sharedInstance = new Log();
            File dir = new File("logs");
            if(!dir.exists())
            {
                dir.mkdir();
            }
            Date now = new Date();
            String filename = String.format("logs/%s.log", date.format(now));
            printWriter = new PrintWriter(new FileWriter(filename,true));
        }
        catch(IOException e)
        {
            throw new RuntimeException("Failed to create Log singleton.");
        }
    }
    
    /*private static Log getInstance()
    {
        return sharedInstance;
    }*/
    
    public static void write(String message)
    {
        Date now = new Date();
        
        System.out.println(date.format(now) + ": " + message);
        printWriter.println(date.format(now) + ": " + message);
        printWriter.flush();
    }
    
    public static void write(String message, String exceptionMessage, String exceptionCause)
    {
        write(message + " with message -> " + exceptionMessage + " ,and casue -> " + exceptionCause);
    }
    
    public void close()
    {
        printWriter.close();
    }
}
