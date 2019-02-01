other
renderItemDescriptionSecondaryDataOn: html
	| parentName |

	html span with: [html strong: ('Process Id:' translateIn: self session)].
	html output: selectedLateralItem processId.
	html span with: [html strong: ('Version:' translateIn: self session)].
	html output: selectedLateralItem version.
	html span with: [html strong: ('Application:' translateIn: self session)].
	html output: selectedLateralItem applicationName.

	selectedLateralItem isTimerEvent ifFalse: ["is a process definition"
		html span with: [html strong: ('Parent Process:' translateIn: self session)].
		parentName := selectedLateralItem getParentProcessName.
		parentName isEmpty 
		ifFalse: [html anchor 
			class: 'no-underline';
			callback: [self onTopProcessSelected: selectedLateralItem parentProcess]; 
			with: [html output: '@', parentName]
		].
	].