package action.index;

import java.util.ArrayList;
import java.util.List;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;
import net.sf.json.JSONArray;
import config.madvoc.json.JsonData;

@MadvocAction
public class LoginAction {
	@Action("/signIn")
	public JsonData signIn() {
      List list = new ArrayList();  
      list.add( "first" );  
      list.add( "second" );  
      JSONArray jsonArray = JSONArray.fromObject( list );  
      System.out.println( jsonArray );  
		JsonData jd=new JsonData(jsonArray,true);
		System.out.println(jd.toJsonString());
//		System.out.println(jd.toJson(jsonArray.toString()));
		return jd;
	}

}
