other
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem isUserMessage ifTrue: [
		html span with: [html strong: ('From:' translateFor: self session user)].
		html output: selectedLateralItem from username.].

	html span with: [html strong: ('Category:' translateFor: self session user)].
	html output: selectedLateralItem printTransmitter.
	html span with: [html strong: ('Created Time:' translateFor: self session user)].
	html output: selectedLateralItem createdTime.