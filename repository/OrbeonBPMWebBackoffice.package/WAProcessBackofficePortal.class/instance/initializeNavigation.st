other
initializeNavigation
	| subMenu1 subMenu2 subMenu3 subMenu4 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	subMenu1 := (SewafSubMenuItem label: 'Processes' icon: #process32Png)
		addItem: (SewafCommandItem label: 'List Processes Definitions' command: #openDefinitionsManager);
		addItem: (SewafCommandItem label: 'Define New Process' command: #openBizagiManager);
		addItem: (SewafCommandItem label: 'Monitor Processes' command: #openProcessRadar);
		addItem: (SewafCommandItem label: 'Monitor Users' command: #openUsersRadar);
		addItem: (SewafCommandItem label: 'Process Categories' command: #openProcessCategoryManager);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Applications' icon: #forms32Png)
		addItem: (SewafCommandItem label: 'Manage Applications' command: #openApplicationManager);
		addItem: (SewafCommandItem label: 'Manage Orbeon Forms' command: #openFormManager);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Users & Roles' icon: #usersettings32Png)
		addItem: (SewafCommandItem label: 'Manage Users' command: #openUsersManager);
		addItem: (SewafCommandItem label: 'Manage Roles' command: #openRolesManager);
		addItem: (SewafCommandItem label: 'Import' command: #importUsersAndRoles);
		addItem: (SewafCommandItem label: 'Export' command: #exportUsersAndRoles);
		yourself.
	subMenu4 := (SewafSubMenuItem label: 'Configuration' icon: #serversetting32Png)
		addItem: (SewafCommandItem label: 'User Preferences' command: #showUserPreferences);
		addItem: (SewafCommandItem label: 'Server Setup' command: #openServerSetup);
		addItem: (SewafCommandItem label: 'Login Mode' command: #openLoginMode);
		addItem: (SewafCommandItem label: 'Change Password' command: #openChangePassword);
		addItem: (SewafCommandItem label: 'Set Language' command: #openLanguageConfiguration);
		addItem: (SewafCommandItem label: 'Internationalization' command: #openInternationalizationManager);
		yourself.
	navigation addItem: subMenu2;
		addItem: subMenu1;
		addItem: subMenu3;
		addItem: subMenu4.