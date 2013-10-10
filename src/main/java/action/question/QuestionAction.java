package action.question;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;

@MadvocAction("question")
public class QuestionAction {
	
	@Action("show")
	public String show(){
		return "";
	}
}
