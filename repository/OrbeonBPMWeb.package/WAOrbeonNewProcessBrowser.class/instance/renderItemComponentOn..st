other
renderItemComponentOn: html
	| inform |

	selectedLateralItem ifNil: [andApplications := OrderedCollection new. ^orApplications := OrderedCollection new].

	self renderNewProcessCommandIconOn: html.

	html div id: 'new-process-options-form'; with: [
		self renderNewProcessAndOptionsOn: html.
		self renderNewProcessOrOptionsOn: html.
	].

	html div id: 'artifact-definitions'; with: [
		selectedLateralItem getOrderedTasks do: [:taskDefinition | 
			html div class: 'artifact-definition'; with: [html output: taskDefinition printNameAndDefinitionType]]
	].

	processInstance ifNil: [^self].

	inform := SewafInformComponent parent: self.
	inform information: (('New Process Created number: <' translateFor: self session user), processInstance id printString, '>') color: 'green'.

	html div id: 'new-process-information'; with: [
		html render: inform.
	].