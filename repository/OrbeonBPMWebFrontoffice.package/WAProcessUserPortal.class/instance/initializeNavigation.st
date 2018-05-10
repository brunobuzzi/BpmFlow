top menu
initializeNavigation
	| homeMenu subMenu1 subMenu2 subMenu3 subMenu5 subMenu6 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
"	homeMenu := (SewafSubMenuItem label: 'Home' icon: #placesuserhome32Png)
		set24Icon: #placesuserhome24Png;
		addItem: (SewafCommandItem label: 'Home' command: #openHome);
		yourself."
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
	subMenu3 := (SewafSubMenuItem label: 'New Process' icon: #processadd32Png)
		set24Icon: #processadd24Png;
		addItem: (SewafCommandItem label: 'Available Processes' command: #showAvailableProcesses);
		addItem: (SewafCommandItem label: 'Granted Tasks' command: #showGrantedTasks);
		yourself.
	subMenu5 := (SewafSubMenuItem label: 'Configuration' icon: #applicationsettings32Png)
		set24Icon: #applicationsettings24Png;
		addItem: (SewafCommandItem label: 'Change Password' command: #showChangePassword);
		addItem: (SewafCommandItem label: 'Display Preferences' command: #showDisplayPreferences);
		addItem: (SewafCommandItem label: 'Set Language' command: #showLanguageConfiguration);
		yourself.

	subMenu6 := (SewafSubMenuItem label: 'Inbox' icon: #emailinbox32Png)
		set24Icon: #emailinbox24Png;
		addItem: (SewafCommandItem label: 'Inbox' command: #showInternalInbox);
		addItem: (SewafCommandItem label: 'Outbox' command: #showInternalOutbox);
		yourself.

"	layout isTop ifTrue: [navigation addItem: homeMenu]."

	navigation addItem: subMenu1;
		addItem: subMenu2;
		addItem: subMenu3;
		addItem: subMenu6;
		addItem: subMenu5.