other
renderItemComponentOn: html

	selectedLateralItem ifNil: [andApplications := OrderedCollection new. ^orApplications := OrderedCollection new].

	self renderNewProcessCommandIconOn: html.

	html div id: 'new-process-options-form'; with: [
		self renderNewProcessAndOptionsOn: html.
		self renderNewProcessOrOptionsOn: html.
	].

	self renderNewProcessInstanceNumberOn: html.

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [self renderSvgProcessMapOn: html].