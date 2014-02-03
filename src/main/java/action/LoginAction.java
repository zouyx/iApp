package action;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;
import model.login.LoginInfo;
import net.sf.json.JSONArray;
import config.json.JsonData;
import config.json.JsonResult;

@MadvocAction("/")
public class LoginAction {
	@Action("signin")
	public JsonResult signin() {
		LoginInfo loginInfo=new LoginInfo();
		loginInfo.setIsLogin(true);
		loginInfo.setUserName("joe");
		JSONArray jsonArray = JSONArray.fromObject(loginInfo);
		System.out.println(jsonArray);
		JsonData jd = new JsonData(jsonArray, true);
		System.out.println(jd.toJsonString());
		JsonResult r=new JsonResult();
		return r;
	}

}
