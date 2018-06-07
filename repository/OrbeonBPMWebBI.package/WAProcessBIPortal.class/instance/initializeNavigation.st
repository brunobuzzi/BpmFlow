top menu
initializeNavigation
	| subMenu1 subMenu2 subMenu3 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.

	subMenu1 := (SewafSubMenuItem label: 'User Charts' icon: #monitorchart32Png)
		set24Icon: #worksinprogress24Png;
		addItem: (SewafCommandItem label: 'My Charts' command: #showMyChartsComposite);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'System Charts' icon: #barchart32Png)
		set24Icon: #folderscheduledtasks24Png;
		addItem: (SewafCommandItem label: 'Global Charts' command: #openGlobalCharts);
		addItem: (SewafCommandItem label: 'Applications Charts' command: #openBpmApplicationsCharts);
		addItem: (SewafCommandItem label: 'Processes Charts' command: #openBpmProcessCharts);
		addItem: (SewafCommandItem label: 'Roles Charts' command: #openBpmRoleCharts);
		addItem: (SewafCommandItem label: 'Users Charts' command: #openBpmUserCharts);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Charts Repository' icon: #placesfoldersavedsearch32Png)
		set24Icon: #placesfoldersavedsearch24Png;
		addItem: (SewafCommandItem label: 'Saved Charts' command: #openSavedCharts);
		yourself.

	navigation addItem: subMenu1.
	self session user isBackofficeUser ifTrue: [navigation addItem: subMenu2].
	navigation addItem: subMenu3.