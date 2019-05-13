<%@ WebHandler Language="C#" Class="myHandler" %>

using System;
using System.Web;
using System.Linq;

public class myHandler : IHttpHandler {
    myDatabaseEntities db = new myDatabaseEntities();

    public void ProcessRequest (HttpContext context) {

        try
        {
            string x = context.Request.QueryString["id"];
            //int idn = Int32.Parse(x);
            var data = db.Books.Where(d => d.ISBN == x).FirstOrDefault();
            //context.Response.ContentType = "text/plain";
            context.Response.BinaryWrite(data.Photo);
        }
        catch (Exception)
        {

        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}