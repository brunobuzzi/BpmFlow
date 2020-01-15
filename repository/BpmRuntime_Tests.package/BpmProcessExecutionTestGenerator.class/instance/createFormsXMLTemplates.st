cg formInstance
createFormsXMLTemplates

	procInstance getProcessesTreeAsCollection do: [:eachProc |
		((eachProc currentActivities, eachProc executedActivities) select: [:each | each hasForm]) do: [:eachTask | | templateFormDefinitionStream templateMethodName |
			templateFormDefinitionStream  := String new writeStream.
			templateMethodName := self getFromDefinitionTemplateMethoNameFor: eachTask externalObject.
			templateFormDefinitionStream 
				nextPutAll: templateMethodName; cr; 
				nextPutAll: '^', eachTask getComponentClass xmlString quoted.
			OrbeonFormDefinitionTemplateFrom2017_2 class compile: templateFormDefinitionStream contents classified: 'automatically generated'.

			templateFormDefinitionStream  := String new writeStream.
			templateMethodName := self getFromInstanceTemplateMethoNameFor: eachTask externalObject.
			templateFormDefinitionStream 
				nextPutAll: templateMethodName; cr; 
				nextPutAll: '^', eachTask externalObject xmlString quoted.
			OrbeonFormInstanceTemplate class compile: templateFormDefinitionStream contents classified: 'automatically generated'.
		]. 
	].