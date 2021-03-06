﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//
using Aop;
using Application;
using Utility;
using BLL;
using Model;
using Utility.ValidateHelper;
using DbFrame;
using DbFrame.Class;

namespace HPlus.Areas.Admin.Controllers
{
    [@ActionFilter(false)]
    public class LoginController : Controller
    {
        //
        // GET: /Admin/Login/

        T_Users user = new T_Users();
        T_Roles troles = new T_Roles();
        T_UsersRoles tuserroles = new T_UsersRoles();
        DBContext db = new DBContext();

        public ActionResult Index()
        {
            Session.Clear();
            return View();
        }

        /// <summary>
        /// 验证
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Checked(string username, string userpwd, string loginCode)
        {
            if (string.IsNullOrEmpty(username))
                throw new MessageBox("请输入用户名", 500);
            if (string.IsNullOrEmpty(userpwd))
                throw new MessageBox("请输入密码", 500);
            //if (string.IsNullOrEmpty(loginCode))
            //    throw new MessageBox("请输入验证码", 500);
            user = db.Find<T_Users>(w => w.cUsers_LoginName == "admin");

            if (Tools.getGuid(user.uUsers_ID).Equals(Guid.Empty))
                throw new MessageBox("用户不存在", 500);
            if (!Tools.getString(user.cUsers_LoginPwd).Trim().Equals(userpwd))//Tools.MD5Encrypt(userpwd)))//
                throw new MessageBox("密码错误", 500);
            //string code = Tools.GetCookie("loginCode");
            //if (string.IsNullOrEmpty(code))
            //    throw new MessageBox("验证码失效", 500);
            //if (!code.ToLower().Equals(loginCode))
            //    throw new MessageBox("验证码不正确", 500);

            tuserroles = db.Find<T_UsersRoles>(w => w.uUsersRoles_UsersID == user.uUsers_ID);

            troles = db.Find<T_Roles>(w => w.uRoles_ID == tuserroles.uUsersRoles_RoleID);

            Session["UserID"] = user.uUsers_ID;

            if (user.cUsers_LoginName.Equals("admin"))
                Session["RoleID"] = "admin";
            else
                Session["RoleID"] = tuserroles.uUsersRoles_RoleID;
            return Json(new { status = 1, jumpurl = "/Admin/Home/" }, JsonRequestBehavior.DenyGet);
        }

        /// <summary>
        /// 获取验证码
        /// </summary>
        /// <returns></returns>
        public ActionResult yzm()
        {
            ValidateCodeHelper vch = new ValidateCodeHelper();
            string code = vch.GetRandomNumberString(4);
            Tools.WriteCookie("loginCode", code, 2);
            return File(vch.CreateImage(code), "image/jpeg");
        }

    }
}
