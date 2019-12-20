*bpmcore
getProcessesDefinition

	^self defaultProcessDefinitionClass cacheAt: applicationName ifAbsent: [#()]