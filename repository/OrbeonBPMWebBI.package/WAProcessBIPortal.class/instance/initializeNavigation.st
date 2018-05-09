top menu
initializeNavigation
	| subMenu1 subMenu2 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'My Charts' icon: #monitorchart32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'Current User Charts' command: #showCurrentProcess);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'System Charts' icon: #barchart32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Global Charts' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Applications Charts' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Processes Charts' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Roles Charts' command: #showUnassignedTasks);
		addItem: (SewafCommandItem label: 'Users Charts' command: #showUnassignedTasks);
		yourself.
	navigation addItem: subMenu1;
		addItem: subMenu2.