other
resetRolesAndAssignments

	rolesAndAssignment do: [:eachCollection | 
		eachCollection do: [:taskAssignment | 
			"reset: [application, process, task, user, matrix] := nil."
			taskAssignment resetToNilParentObjects]].

	rolesAndAssignment := Dictionary new.