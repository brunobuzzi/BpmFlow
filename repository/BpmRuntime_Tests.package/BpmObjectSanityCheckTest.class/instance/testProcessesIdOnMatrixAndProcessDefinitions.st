test
testProcessesIdOnMatrixAndProcessDefinitions
	| fromDefnitionIds fromMatrixIds |

	self defaultEnvironmentClass cache do: [:environment |
		fromDefnitionIds := Set new.
		((self defaultProcessDefinitionClass getAllProcessInstancesIn: environment) "to be compared with Matrix we have to remove script only processes"
			do: [:procInst | procInst getProcessesTreeAsCollection do: [:proc | proc hasOrbeonOrSeasideTasks ifTrue:[fromDefnitionIds add: proc processId]]]).

		fromDefnitionIds := fromDefnitionIds asSet asSortedCollection.

		fromMatrixIds := (((self defaultAvailableTasksMatrixClass getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId]),
								((self defaultTakenTasksMatrixClass getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId]),
								((self defaultFinishedTasksMatrixClass getAllAvailableTaskAssignmentsIn: environment) collect: [:each | each processId])) asSet asSortedCollection.

		self assert: (fromDefnitionIds size = fromMatrixIds size).
	].