// Copyright (c) 2003-2012, Jodd Team (jodd.org). All Rights Reserved.

package config.madvoc;

import jodd.madvoc.action.DefaultActionSupplement;
import jodd.madvoc.component.MadvocConfig;
import jodd.madvoc.meta.Action;
import action.index.LoginAction;

public class MyMadvocConfig extends MadvocConfig {

	@SuppressWarnings( {"unchecked"})
	public MyMadvocConfig() {
		supplementAction = DefaultActionSupplement.class;
		actionPathMappingEnabled = true;
		setRootPackageOf(LoginAction.class);
		this.actionAnnotations = new Class[] {Action.class};
	}

	protected String myparam;

	public String getMyparam() {
		return myparam;
	}

	public void setMyparam(String myparam) {
		this.myparam = myparam;
	}


	
}
