other
selectUser: aBpmUser withValue: aBoolean

	aBoolean 
	ifTrue: [assignationTable at: selectedTask put: aBpmUser.
				(self getTableNamed: 'Users' ifAbsent: [^self]) 
					information: ('User Assigned !!!' translateFor: self session user)
					color: 'green'.]
	ifFalse: [((assignationTable includesKey: selectedTask) and: [(assignationTable at: selectedTask) == aBpmUser])
				ifTrue: [assignationTable removeKey: selectedTask ifAbsent: [].
							(self getTableNamed: 'Users' ifAbsent: [^self]) 
								information: ('User Unassigned !!!' translateFor: self session user)
								color: 'red'.].].