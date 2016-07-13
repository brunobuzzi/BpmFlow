other
resetAll

	rolesAndAssignment do: [:eachCollection | 
		eachCollection do: [:taskAssignment | 
			"reset: [process, task, user, matrix] := nil."
			taskAssignment resetAll]].

	rolesAndAssignment := Dictionary new.