*orbeonBPMWebBasic
renderEnvironmentComboOn: html

	html label 
		attributeAt: 'for' put: 'environment';
		with: ('Environment' translateFor: self session user).
	html select
		attributeAt: 'id' put: 'environment';
		list: (#(''), (BpmEnvironment cache collect: [:each | each name]) asSet asArray) asSortedCollection;
		callback: [:value | self setEnvironment: value];
		selected: (BpmEnvironment cache isEmpty ifTrue: [''] ifFalse: [(BpmEnvironment cache asArray at: 1) name])