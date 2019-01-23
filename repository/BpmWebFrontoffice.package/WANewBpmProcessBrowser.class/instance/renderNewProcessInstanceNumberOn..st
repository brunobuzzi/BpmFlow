other
renderNewProcessInstanceNumberOn: html
	| inform |

	processInstance ifNil: [^self].

	inform := SewafInformComponent parent: self.
	inform information: (('New Process Created number: <' translateFor: self session user), processInstance id printString, '>') color: 'green'.

	html div id: 'new-process-information'; with: [
		html render: inform.
	].