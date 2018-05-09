top menu
initializeNavigation
	| subMenu1 subMenu2 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'My Charts' icon: #worksinprogress32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'Current Processes' command: #showCurrentProcess);
		addItem: (SewafCommandItem label: 'Finished Processes' command: #showFinishedProcess);
		addItem: (SewafCommandItem label: 'Process Categories' command: #showProcessCategories);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'System Charts' icon: #folderscheduledtasks32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'View Unassigned Tasks' command: #showUnassignedTasks);
		yourself.
	navigation addItem: subMenu1;
		addItem: subMenu2.