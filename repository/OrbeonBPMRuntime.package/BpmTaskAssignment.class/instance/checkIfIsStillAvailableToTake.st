other
checkIfIsStillAvailableToTake
	"Answer whether or not the receiver is still available to be taken by a <BpmUser>"

	^(matrix getAvailableTasksFor: roleName) includes: self