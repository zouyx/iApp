package action.question;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.InOut;
import jodd.madvoc.meta.MadvocAction;
import model.login.LoginInfo;
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
	public void toQuestion() {
		LoginInfo loginInfo = new LoginInfo();
		loginInfo.setIsLogin(true);
		loginInfo.setUserName(name);
		
//		JsonResult jr=new JsonResult();
//		try {
// 			jr.render(new JsonData(loginInfo));
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
//		return new JsonData(loginInfo);
	}

}
