other
initializeNavigation
	| homeMenu subMenu1 subMenu2 subMenu3 subMenu5 subMenu6 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
"	homeMenu := (SewafSubMenuItem label: 'Home' icon: #placesuserhome32Png)
		set24Icon: #placesuserhome24Png;
		addItem: (SewafCommandItem label: 'Home' command: #openHome);
		yourself."
	subMenu1 := (SewafSubMenuItem label: 'Processes' icon: #process32Png)
		set24Icon: #process24Png;
		addItem: (SewafCommandItem label: 'Process Definitions' command: #openDefinitionsManager);
		addItem: (SewafCommandItem label: 'Define New Process' command: #openBizagiManager);
		addItem: (SewafCommandItem label: 'Monitor Processes' command: #openProcessRadar);
		addItem: (SewafCommandItem label: 'Browse Timers' command: #openTimerEventBrowser);
		addItem: (SewafCommandItem label: 'Process Categories' command: #openProcessCategoryManager);
		addItem: (SewafCommandItem label: 'Cancelled Processes' command: #openCancelledProcessViewer);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Applications' icon: #package32Png)
		set24Icon: #package24Png;
		yourself.
	"only backoffice global admin can manage BpmEnvironments"
	self session user hasAccessToEnvironmentManager ifTrue: [subMenu2 addItem: (SewafCommandItem label: 'Manage Environments' command: #openEnvironmentManager)].
	subMenu2
		addItem: (SewafCommandItem label: 'Manage Applications' command: #openApplicationManager);
		addItem: (SewafCommandItem label: 'Available Orbeon Forms' command: #openFormManager);
		yourself.
	"only backoffice global admin can manage calendar (which are global to all applications)"
	(self session user isBackofficeUserAndAdminIn: self session bpmEnvironment)
	ifTrue: [subMenu2 addItem: (SewafCommandItem label: 'Manage Calendars' command: #openCalendarManager)].
	subMenu3 := (SewafSubMenuItem label: 'Users & Roles' icon: #usersettings32Png)
		set24Icon: #usersettings24Png;
		addItem: (SewafCommandItem label: 'Manage Users' command: #openUsersManager);
		addItem: (SewafCommandItem label: 'Manage Roles' command: #openRolesManager);
		"addItem: (SewafCommandItem label: 'Manage Users Groups' command: #openUserGroupsManager);"
		addItem: (SewafCommandItem label: 'Monitor Users' command: #openUsersRadar);
		addItem: (SewafCommandItem label: 'Import' command: #importUsersAndRoles);
		addItem: (SewafCommandItem label: 'Export' command: #exportUsersAndRoles);
		yourself.

	subMenu5 := (SewafSubMenuItem label: 'Configuration' icon: #homeserver32Png)
		set24Icon: #homeserver24Png;
		addItem: (SewafCommandItem label: 'User Preferences' command: #showUserPreferences);
		addItem: (SewafCommandItem label: 'Server Setup' command: #openServerSetup);
		addItem: (SewafCommandItem label: 'Login Mode' command: #openLoginMode);
		addItem: (SewafCommandItem label: 'Change Password' command: #openChangePassword);
		addItem: (SewafCommandItem label: 'Set Language' command: #openLanguageConfiguration);
		addItem: (SewafCommandItem label: 'Internationalization' command: #openInternationalizationManager);
		yourself.

	subMenu6 := (SewafSubMenuItem label: 'Messages' icon: #emailinbox32Png)
		set24Icon: #emailinbox24Png;
		addItem: (SewafCommandItem label: 'Inbox' command: #showInternalInbox);
		addItem: (SewafCommandItem label: 'Outbox' command: #showInternalOutbox);
		yourself.
"	layout isTop ifTrue: [navigation addItem: homeMenu]."

	navigation 
		addItem: subMenu2;
		addItem: subMenu1;
		addItem: subMenu3;
		addItem: subMenu6;
		addItem: subMenu5.