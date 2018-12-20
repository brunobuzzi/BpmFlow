*bpmxpdl
getTooltipOrNilFor: anOrbeonApplication
	| formDefinition |
 
	self isOrbeonTaskNode ifFalse: [^super getTooltipOrNil].

	formDefinition := anOrbeonApplication definitionNamed: self getName ifNone: [^super getTooltipOrNil].

	^formDefinition printStructure