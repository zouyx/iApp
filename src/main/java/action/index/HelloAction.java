package action.index;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;

@MadvocAction
public class HelloAction {
	@Action
	public String index() {
		System.out.println("312312312");
		return "good";
	}

}
