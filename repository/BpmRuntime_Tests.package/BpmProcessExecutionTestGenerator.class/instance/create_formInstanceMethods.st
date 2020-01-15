cg formInstance
create_formInstanceMethods

	self createFormsXMLTemplates.

	procInstance getProcessesTreeAsCollection do: [:eachProc |
		((eachProc currentActivities, eachProc executedActivities) select: [:each | each hasForm]) do: [:eachTask | | formInstanceStream |
			formInstanceStream := String new writeStream.
			formInstanceStream 
				nextPutAll: (self getFromInstanceMethoNameFor: eachTask externalObject); cr; tab;
				nextPutAll: '^self formCreatorClass createFormInstance: #';
				nextPutAll: (self getFromInstanceTemplateMethoNameFor: eachTask externalObject); 
				nextPutAll: ' definitionNamed: ', eachTask externalObject getFormName quoted;
				nextPutAll: ' app: ', eachTask applicationName quoted;
				nextPutAll: ' definitionMethod: #', (self getFromDefinitionTemplateMethoNameFor: eachTask externalObject) .
		].
	].


"
formInstance_analyze_appliance

	^self formCreatorClass createFormInstance: #form_analyze_appliance_1 definitionNamed: 'analyze-appliance' app: 'ue' definitionMethod: #formDefinition_analyze_appliance in: procInstance
"