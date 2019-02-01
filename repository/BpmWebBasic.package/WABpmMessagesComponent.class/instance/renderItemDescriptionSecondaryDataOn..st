other
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem isUserMessage ifTrue: [
		html span with: [html strong: ('From:' translateIn: self session)].
		html output: selectedLateralItem from username.].

	html span with: [html strong: ('Category:' translateIn: self session)].
	html output: selectedLateralItem printTransmitter.
	html span with: [html strong: ('Created Time:' translateIn: self session)].
	html output: selectedLateralItem createdTime.