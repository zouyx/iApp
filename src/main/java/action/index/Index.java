package action.index;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;

public class Index extends Controller {
	@ActionKey("/login")
	public void login(){
		render("index.jsp");
	}
}
