﻿<%@ WebHandler Language="C#" Class="formDispose" %>

using System;
using System.Web;

public class formDispose : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";

         context.Response.Write("后台返回ajax提交内容："+context.Request.QueryString["formData"]);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}