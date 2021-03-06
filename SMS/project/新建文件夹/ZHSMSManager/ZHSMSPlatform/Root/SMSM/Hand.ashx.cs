﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZHSMSPlatform.Root.SMSM
{
    /// <summary>
    /// Hand 的摘要说明
    /// </summary>
    public class Hand : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write(GetData(context.Request.Form["id"], context.Request.Form["id2"]));
        }
        protected string GetData(string id, string id2)
        {
            int p = 134;
            int c = SMSUtils.SMSSplit.GetSplitNumber(id, id2, out p);
            return c.ToString();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}