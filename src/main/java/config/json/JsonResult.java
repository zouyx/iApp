package config.json;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import jodd.io.StreamUtil;
import jodd.madvoc.ActionRequest;
import jodd.madvoc.result.ActionResult;
import jodd.util.MimeTypes;

public class JsonResult extends ActionResult {
	 
    public static final String NAME = "json";
    public JsonResult() {
        super(NAME);
    }
 
    @Override
    public void render(
            ActionRequest request, Object resultObject,
            String resultValue, String resultPath) throws Exception {
 
        if (resultObject instanceof JsonData == false) {
            return;
        }
     
        // write output
        HttpServletResponse response = request.getHttpServletResponse();
        response.setContentType(MimeTypes.MIME_TEXT_PLAIN);
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
            writer.println(((JsonData) resultObject).toJsonString());
        } finally {
            StreamUtil.close(writer);
        }
    }
}
