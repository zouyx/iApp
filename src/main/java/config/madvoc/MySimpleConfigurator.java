// Copyright (c) 2003-2012, Jodd Team (jodd.org). All Rights Reserved.

package config.madvoc;

import jodd.madvoc.config.AutomagicMadvocConfigurator;
import action.index.LoginAction;

/**
 * Simple manual configuration.
 */
public class MySimpleConfigurator extends AutomagicMadvocConfigurator {

	@Override
	public void configure() {
		super.configure();
		System.out.println("MySimpleConfigurator.configure");

		// manual action configuration
//		actionsManager.register(IncognitoRequest.class, "hello", "/incognito.html");
//		actionsManager.register(HelloAction.class, "view", "/hello.html");

		// result aliasing
//		actionsManager.registerPathAlias("/hello.all", "/hi-all");
	}
}
