search area
renderBpmUsersComboOn: html

	^self renderGenericActiveComboOn: html 
			withList: (((self session user getVisibleUsersIn: self session bpmEnvironment) asSortedCollection: [:a :b | a username <= b username]) collect: [:each | each username])
			forVariable: 'bpm-user' 
			label: ('User' translateIn: self session)