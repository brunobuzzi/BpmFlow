import warning
appendFormsWithMissingMandatoryFieldsIn: anApplication to: anOrderedCollection
	| activitiesToControl |

	anApplication isObeonApplication ifFalse: [^anOrderedCollection].
	activitiesToControl := activities reject: [:each | each isGatewayNode].

	"remove Forms with anonynous start. Madatory fields are not needed when the Process has an anonymous"
	startNode isAnonymousStart ifTrue: [
		startNode outTransitions do: [:each | activitiesToControl removeKey: each endNode getName]]. 
	
	activitiesToControl do:[:each | | def |
		def := anApplication definitionNamed: each getName.
		def ifNotNil: [ 
			def getMandatoryFieldsMissing do: [:eachName | | item |
				item := XPDLItemImportReport new 
							code: 604;
							type: 'Error';
							title: 'Missing Mandatory Forms Field';
							description: 'Form [', def formName, '] in Orbeon Application [', anApplication applicationName, '] has NO mandatory field [', eachName ,']';
							solution: 'Add missing mandatory fields to the Form Definition. Mandatori fields (s, k, oop, uuid, assignmentOop, username, rol, processId)';
						yourself.
				anOrderedCollection add: item]
			]
	].

	^anOrderedCollection