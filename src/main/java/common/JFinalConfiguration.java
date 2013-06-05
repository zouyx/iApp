package common;

import action.index.Index;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;

public class JFinalConfiguration extends JFinalConfig{

	@Override
	public void configConstant(Constants constants) {
		constants.setDevMode(true);
	}

	@Override
	public void configHandler(Handlers handlers) {
		
	}

	@Override
	public void configInterceptor(Interceptors interceptors) {
		
	}

	@Override
	public void configPlugin(Plugins plugins) {
		
	}

	@Override
	public void configRoute(Routes routes) {
		routes.add("/iApp",Index.class);
	}

}
