subprocesses
getProcessInstanceWith: instanceId ifAbsent: aBlock

	^processInstances at: instanceId ifAbsent: aBlock