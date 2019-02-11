assign unassign
assignUserToSelectedTask: aBpmUser
	| taskAssignment |

	taskAssignment := self componentValueAt: 'userAssgination' ifAbsent: [^self].

	aBpmUser take: taskAssignment.

	self removeValueNamed: 'userAssgination'