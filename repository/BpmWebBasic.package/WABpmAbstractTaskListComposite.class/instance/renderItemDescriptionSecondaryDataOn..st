top banner
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Application:' translateIn: self session)].
	html output: model applicationName.
	html span with: [html strong: ('Process Id:' translateIn: self session)].
	html output: model processId.
	html span: [html strong: ('Version:' translateIn: self session)]. 
	html output: model version.
	html span: [html strong: ('Process State:' translateIn: self session)].
	html output: (model printProcessState translateIn: self session).

	model isWaitingEvent
	ifTrue: [html span: [html strong: ('Waiting Event:' translateIn: self session)].
				html output: ('true' translateIn: self session)].