*bpmwebbasic
renderEnvironmentComboOn: html for: anOrderedCollection

	html label 
		attributeAt: 'for' put: 'environment';
		with: ('Environment' translateFor: self session user).
	html select
		attributeAt: 'id' put: 'environment';
		list: anOrderedCollection;
		callback: [:value | self setEnvironment: value];
		selected: (anOrderedCollection isEmpty ifTrue: [''] ifFalse: [(anOrderedCollection at: 1) name])