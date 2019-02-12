assign unassign
assignUserToSelectedTask: aBpmUser
	| taskAssignment |

	taskAssignment := self componentValueAt: 'userAssgination' ifAbsent: [^self].

	taskAssignment checkIfIsStillAvailableToTake 
	ifFalse: [self setAlertStringFor: taskAssignment.
				^self removeValueNamed: 'userAssgination'].

	aBpmUser take: taskAssignment.

	self removeValueNamed: 'userAssgination'