// Copyright (c) 2003-2012, Jodd Team (jodd.org). All Rights Reserved.

package config.madvoc;

import java.util.Properties;

import javax.servlet.ServletContext;

import jodd.madvoc.component.ActionsManager;
import jodd.madvoc.component.MadvocConfig;
import jodd.madvoc.component.ResultsManager;
import jodd.madvoc.config.MadvocConfigurator;
import jodd.madvoc.petite.PetiteWebApplication;
import jodd.petite.PetiteContainer;
import jodd.upload.impl.AdaptiveFileUploadFactory;

/**
 * Custom web application.
 */
public class IAppApplication extends PetiteWebApplication {

	@Override
	protected PetiteContainer providePetiteContainer() {
		PetiteContainer petiteContainer = super.providePetiteContainer();

		petiteContainer.getConfig().setDetectMixedScopes(true);
		petiteContainer.getConfig().setWireScopedProxy(true);

		return petiteContainer;
	}

	@Override
	public void registerMadvocComponents() {
		System.out.println("MyWebApplication.registerMadvocComponents");
		super.registerMadvocComponents();
		registerComponent(IAppMadvocConfig.class);
		registerComponent(IAppRewriter.class);
		
	}

	@Override
	protected void init(MadvocConfig madvocConfig, ServletContext servletContext) {
		System.out.println("MyWebApplication.init (" + madvocConfig.getClass().getSimpleName() + ')');
		super.init(madvocConfig, servletContext);
		((AdaptiveFileUploadFactory) madvocConfig.getFileUploadFactory()).setBreakOnError(true);
	}
}
