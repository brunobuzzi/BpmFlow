test
testGetComponentsInTaskDefinitions

	self defaultEnvironmentClass cache do: [:environment |
		environment getAllProcessDefinitions do: [:processDefinition | 
			(processDefinition getOrbeonTasks, processDefinition getSeasideTasks) do: [:taskDefinition | 
				[taskDefinition getComponentClass] on: NoComponentFoundException do: [:ex | self assert: false].
			]. 
		]. 
	].