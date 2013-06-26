package action.login;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;
import model.login.LoginInfo;
import net.sf.json.JSONArray;
import config.json.JsonData;

@MadvocAction
public class LoginAction {
	@Action("/signin")
	public JsonData signin() {
		LoginInfo loginInfo=new LoginInfo();
		loginInfo.setIsLogin(true);
		loginInfo.setUserName("joe");
		JSONArray jsonArray = JSONArray.fromObject(loginInfo);
		System.out.println(jsonArray);
		JsonData jd = new JsonData(jsonArray, true);
		System.out.println(jd.toJsonString());
		return jd;
	}

}
