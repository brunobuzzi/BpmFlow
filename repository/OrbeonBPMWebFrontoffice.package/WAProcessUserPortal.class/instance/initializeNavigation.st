top menu
initializeNavigation
	| homeMenu subMenu1 subMenu2 subMenu3 subMenu4 subMenu5 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	homeMenu := (SewafSubMenuItem label: 'Home' icon: #placesuserhome32Png)
		set24Icon: #placesuserhome24Png;
		addItem: (SewafCommandItem label: 'Home' command: #openHome);
		yourself.
	subMenu1 := (SewafSubMenuItem label: 'My Processes' icon: #worksinprogress32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'Current Processes' command: #showCurrentProcess);
		addItem: (SewafCommandItem label: 'Finished Processes' command: #showFinishedProcess);
		addItem: (SewafCommandItem label: 'Process Categories' command: #showProcessCategories);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Unassigned Tasks' icon: #folderscheduledtasks32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'View Unassigned Tasks' command: #showUnassignedTasks);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Create Process' icon: #processadd32Png)
		set24Icon: #processadd24Png;
		addItem: (SewafCommandItem label: 'Available Processes' command: #showAvailableProcesses);
		addItem: (SewafCommandItem label: 'Granted Tasks' command: #showGrantedTasks);
		yourself.
	subMenu4 := (SewafSubMenuItem label: 'Charts' icon: #chart32Png)
		set24Icon: #chart24Png;
		addItem: (SewafCommandItem label: 'My Charts' command: #showMyChartsComposite);
		yourself.
	subMenu5 := (SewafSubMenuItem label: 'User Preferences' icon: #applicationsettings32Png)
		set24Icon: #applicationsettings24Png;
		addItem: (SewafCommandItem label: 'Change Password' command: #showChangePassword);
		addItem: (SewafCommandItem label: 'Display Preferences' command: #showDisplayPreferences);
		addItem: (SewafCommandItem label: 'Set Language' command: #showLanguageConfiguration);
		yourself.

	layout isTop ifTrue: [navigation addItem: homeMenu].

	navigation addItem: subMenu1;
		addItem: subMenu2;
		addItem: subMenu3;
		addItem: subMenu4;
		addItem: subMenu5.