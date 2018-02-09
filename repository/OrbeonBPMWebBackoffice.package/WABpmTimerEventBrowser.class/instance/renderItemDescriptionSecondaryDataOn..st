other
renderItemDescriptionSecondaryDataOn: html
	| parentName |

	html span with: [html strong: ('Process Id:' translateFor: self session user)].
	html output: selectedLateralItem processId.
	html span with: [html strong: ('Version:' translateFor: self session user)].
	html output: selectedLateralItem version.
	html span with: [html strong: ('Application:' translateFor: self session user)].
	html output: selectedLateralItem applicationName.

	selectedLateralItem isTimerEvent ifFalse: ["is a process definition"
		html span with: [html strong: ('Parent Process:' translateFor: self session user)].
		parentName := selectedLateralItem getParentProcessName.
		parentName isEmpty 
		ifFalse: [html anchor 
			class: 'no-underline';
			callback: [self onTopProcessSelected: selectedLateralItem parentProcess]; 
			with: [html output: '@', parentName]
		].
	].