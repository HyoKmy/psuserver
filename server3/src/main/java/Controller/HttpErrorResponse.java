package Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class HttpErrorResponse
{
    private final String timestamp;
    private final int status;
    private final String error;
    private final String message;
    private final String path;

    public HttpErrorResponse(int status, String error, String message, String path) 
    {   
        Date now = new Date();
        SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
        date.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.timestamp = date.format(now).toString();
        this.status = status;
        this.error = error;
        this.message = message;
        this.path = path;
    }

    //Bad Request helper because bad request will be used a lot
    public static HttpErrorResponse BadRequest(String path)
    {
        return new HttpErrorResponse(400, "Bad Request", "Unknown error", path);
    }

    public static HttpErrorResponse DatabaseError(String path)
    {
        return new HttpErrorResponse(400, "Bad Request", Database.errorMessage, path);
    }

    public String getTimestamp()
    {
        return timestamp;
    }

    public int getStatus() 
    {
        return status;
    }

    public String getError() 
    {
        return error;
    }

    public String getMessage() 
    {
        return message;
    }

    public String getPath() 
    {
        return path;
    }
}