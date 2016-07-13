import warning
appendFormsWithMissingMandatoryFieldsIn: anOrbeonApplication to: anOrderedCollection

	(activities reject: [:each | each isGatewayNode])
		do:[:each | | def |
					def := anOrbeonApplication definitionNamed: each getName.
					def ifNotNil: [ 
						def getMandatoryFieldsMissing do: [:eachName | | item |
							item := XPDLItemImportReport new type: 'Error';
										title: 'Missing Mandatory Field';
										description: 'Form [', def formName, '] in Orbeon Application [', anOrbeonApplication applicationName, '] has NO mandatory field [', eachName ,']';
										solution: 'Add missing mandatory fields to the Form Definition. Mandatori fields (s, k, oop, uuid, assignmentOop, username, rol, formId)';
									yourself.
							anOrderedCollection add: item]]].

	^anOrderedCollection