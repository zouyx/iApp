package action.question;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.In;
import jodd.madvoc.meta.InOut;
import jodd.madvoc.meta.MadvocAction;
import jodd.madvoc.meta.Out;
import model.login.LoginInfo;
import net.sf.json.JSONArray;
import config.json.JsonData;
import config.json.JsonResult;

@MadvocAction("question")
public class QuestionAction {
	@InOut
	String name;

	@Action("show")
	public String show() {
		return "";
	}

	@Action("showQuestion")
	public JsonData toQuestion() {
		LoginInfo loginInfo = new LoginInfo();
		loginInfo.setIsLogin(true);
		loginInfo.setUserName(name);
		JSONArray jsonArray = JSONArray.fromObject(loginInfo);
		return new JsonData(jsonArray, true);
	}

}
