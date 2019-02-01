process
renderItemDescriptionSecondaryDataOn: html
	| parentName |

	html span with: [html strong: ('Process Id:' translateIn: self session)].
	html output: selectedLateralItem processId.
	html span with: [html strong: ('Version:' translateIn: self session)].
	html output: selectedLateralItem version.
	html span with: [html strong: ('Application:' translateIn: self session)].
	html output: selectedLateralItem applicationName.
	html span with: [html strong: ('Parent Process:' translateIn: self session)].
	parentName := selectedLateralItem getParentProcessName.
	parentName isEmpty 
	ifFalse: [html anchor 
		class: 'no-underline';
		callback: [self onTopProcessSelected: selectedLateralItem parentProcess]; 
		with: [html output: '@', parentName]
	].
	html span with: [html strong: ('Immutable:' translateIn: self session)].
	html output: selectedLateralItem isImmutable.
	html span with: [html strong: ('Is Available:' translateIn: self session)].
	html output: selectedLateralItem isAvailable.