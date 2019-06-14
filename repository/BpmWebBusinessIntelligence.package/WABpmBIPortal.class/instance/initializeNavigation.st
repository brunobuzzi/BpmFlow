top menu
initializeNavigation
	| subMenu0 subMenu1 subMenu2 subMenu3 subMenu4 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.

	subMenu0 := (SewafSubMenuItem label: 'Dashboards' icon: #dashboard32Png)
		set24Icon: #dashboard24Png;
		"addItem: (SewafCommandItem label: 'New Dashboard' command: #showNewDashboardComposite);"
		addItem: (SewafCommandItem label: 'Current Dashboards' command: #showMyDashboardComposite);
		addItem: (SewafCommandItem label: 'Old Dashboards' command: #showMyOldDashboardsComposite);
		addItem: (SewafCommandItem label: 'Historical Dashboards' command: #showMyHistoricalDashboardsComposite);
		yourself.
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
	subMenu3 := (SewafSubMenuItem label: 'Compare Fields' icon: #linechart32Png)
		set24Icon: #linechart24Png;
		addItem: (SewafCommandItem label: 'Fields Comparison' command: #openCompareFieldsCharts);
		yourself.

	subMenu4 := (SewafSubMenuItem label: 'Charts Repository' icon: #placesfoldersavedsearch32Png)
		set24Icon: #placesfoldersavedsearch24Png;
		addItem: (SewafCommandItem label: 'My Saved Charts' command: #openSavedCharts);
		addItem: (SewafCommandItem label: 'System Saved Charts' command: #openUsersSavedCharts);
		yourself.

	self session user isBackofficeUser ifTrue: [navigation addItem: subMenu0].
	navigation addItem: subMenu1.
	self session user isBackofficeUser ifTrue: [navigation addItem: subMenu2; addItem: subMenu3].
	navigation addItem: subMenu4.