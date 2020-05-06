other
initializeNavigation
	| subMenu1 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	subMenu1 := (SewafSubMenuItem label: 'Manage GemStone/S DB' icon: #miscwebdatabase32Png)
		addItem: (SewafCommandItem label: 'Backup Database' command: #openBackupDatabase);
		addItem: (SewafCommandItem label: 'Start Garbage Collection' command: #openStartGarbageCollection);
		addItem: (SewafCommandItem label: 'List Running Gems' command: #openListRunningGems);
		addItem: (SewafCommandItem label: 'Repository Statistics' command: #openRepositoryStatistics);
		yourself.

	navigation addItem: subMenu1.