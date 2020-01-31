test
testGetComponentsInTaskDefinitions

	self defaultEnvironmentClass cache do: [:environment |
		(self defaultProcessDefinitionClass getAllProcessDefinitionIn: environment) do: [:processDefinition | 
			(processDefinition getOrbeonTasks, processDefinition getSeasideTasks) do: [:taskDefinition | 
				[taskDefinition getComponentClass] on: NoComponentFoundException do: [:ex | self assert: false].
			]. 
		]. 
	].