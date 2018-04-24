test
testProcessesIdOnMatrixAndProcessDefinitions
	| fromDefnitionIds fromMatrixIds |

	fromDefnitionIds := Set new.
	((BpmProcessDefinition getAllProcessInstances select: [:each | each hasOrbeonOrSeasideTasks]) "to be compared with Matrix we have to remove script only processes"
		do: [:procInst | procInst getProcessesTreeAsCollection do: [:proc | fromDefnitionIds add: proc processId]]).

	fromDefnitionIds := fromDefnitionIds asSortedCollection.

	fromMatrixIds := ((BpmAvailableTasksMatrix getAllAvailableTaskAssignments collect: [:each | each processId]),
							(BpmTakenTasksMatrix getAllAvailableTaskAssignments collect: [:each | each processId]),
							(BpmFinishedTasksMatrix getAllAvailableTaskAssignments collect: [:each | each processId])) asSet asSortedCollection.

	self assert: (fromDefnitionIds size = fromMatrixIds size).