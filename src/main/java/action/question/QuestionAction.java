package action.question;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.In;
import jodd.madvoc.meta.MadvocAction;
import jodd.madvoc.meta.Out;
import model.login.LoginInfo;
import net.sf.json.JSONArray;
import config.json.JsonData;

@MadvocAction("question")
public class QuestionAction {
	@In
	@Out
	public String name;
	
	@Action("show")
	public String show(){
		return "";
	}
	
	@Action("showQuestion")
	public String toQuestion() {
		LoginInfo loginInfo=new LoginInfo();
		loginInfo.setIsLogin(true);
		loginInfo.setUserName(name);
		JSONArray jsonArray = JSONArray.fromObject(loginInfo);
		System.out.println(jsonArray);
		JsonData jd = new JsonData(jsonArray, true);
		System.out.println(jd.toJsonString());
		return "";
	}
}
