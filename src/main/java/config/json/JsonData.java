package config.json;

import net.sf.json.JSONSerializer;

//@RenderWith(JsonResult.class)
public class JsonData {
	 
    private static final String RESULT = JsonResult.NAME + ':';
    private static final String[] DEFAULT_JSON_EXCLUDES = new String[] {"class", "*.class"};
 
    private final JSONSerializer jsonSerializer;
    private final Object target;
 
    public JsonData(Object target) {
        this(target, true);
    }
 
    public JsonData(Object target, boolean excludeDefault) {
        this.target = target;
        jsonSerializer = new JSONSerializer();
        if (excludeDefault == true) {
            jsonSerializer.toJSON(DEFAULT_JSON_EXCLUDES);
        }
    }
 
    public JsonData toJson(String jsonString) {
        jsonSerializer.toJSON(jsonString);
        return this;
    }
 
    public String toJsonString() {
        return jsonSerializer.toJSON(target).toString();
    }
 
    @Override
    public String toString() {
        return RESULT;
    }
}
