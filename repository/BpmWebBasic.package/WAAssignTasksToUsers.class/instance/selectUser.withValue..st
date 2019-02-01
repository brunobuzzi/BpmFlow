users
selectUser: aBpmUser withValue: aBoolean

	aBoolean 
	ifTrue: [assignationTable at: selectedTask put: aBpmUser.
				(self getTableNamed: 'Users' ifAbsent: [^self]) 
					information: ('User Assigned !!!' translateIn: self session)
					color: 'green'.]
	ifFalse: [((assignationTable includesKey: selectedTask) and: [(assignationTable at: selectedTask) == aBpmUser])
				ifTrue: [assignationTable removeKey: selectedTask ifAbsent: [].
							(self getTableNamed: 'Users' ifAbsent: [^self]) 
								information: ('User Unassigned !!!' translateIn: self session)
								color: 'red'.].].