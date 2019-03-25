test
testProcessesIdOnMatrixAndProcessDefinitions
	| fromDefnitionIds fromMatrixIds |

	self defaultEnvironmentClass cache do: [:environment |
		fromDefnitionIds := Set new.
		(((BpmProcessDefinition getAllProcessInstancesIn: environment) select: [:each | each hasOrbeonOrSeasideTasks]) "to be compared with Matrix we have to remove script only processes"
			do: [:procInst | procInst getProcessesTreeAsCollection do: [:proc | fromDefnitionIds add: proc processId]]).

		fromDefnitionIds := fromDefnitionIds asSet asSortedCollection.

		fromMatrixIds := (((BpmAvailableTasksMatrix getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId]),
								((BpmTakenTasksMatrix getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId]),
								((BpmFinishedTasksMatrix getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId])) asSet asSortedCollection.

		self assert: (fromDefnitionIds size = fromMatrixIds size).
	].