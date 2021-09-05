cg formInstance
createFormsXMLTemplates
	"The receiver creates all templates methods in <OrbeonFormDefinitionTemplateFrom2017_2> and <OrbeonFormInstanceTemplate> class.
	1- Get the XML source from each form definition and form instance.
	2- Compile a method with the XML source in <OrbeonFormDefinitionTemplateFrom2017_2> or <OrbeonFormInstanceTemplate>"

	procInstance getProcessesTreeAsCollection do: [:eachProc |
		((eachProc currentActivities, eachProc executedActivities) select: [:each | each hasForm]) do: [:eachTask | | templateFormDefinitionStream templateMethodName templateFormInstanceStream |
			templateFormDefinitionStream  := String new writeStream.
			templateMethodName := self getFromDefinitionTemplateMethoNameFor: eachTask externalObject.
			templateFormDefinitionStream 
				nextPutAll: templateMethodName; cr; 
				nextPutAll: '^', eachTask getComponentClass xmlString quoted.
			self compile: templateFormDefinitionStream in: self systemRoot definitionTemplateClass asMethodNamed: templateMethodName asSymbol category: 'automatically generated'.

			templateFormInstanceStream  := String new writeStream.
			templateMethodName := self getFromInstanceTemplateMethoNameFor: eachTask externalObject.
			templateFormInstanceStream 
				nextPutAll: templateMethodName; cr; 
				nextPutAll: '^', eachTask externalObject xmlString quoted.
			self compile: templateFormInstanceStream in: self systemRoot instanceTemplateClass asMethodNamed: templateMethodName asSymbol category: 'automatically generated'.
		]. 
	].