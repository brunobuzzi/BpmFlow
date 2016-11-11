other
renderBpmUsersComboOn: html

	^self renderGenericActiveComboOn: html 
			withList: ((self session user getVisibleUsers asSortedCollection: [:a :b | a username <= b username]) collect: [:each | each username])
			forVariable: 'bpm-user' 
			label: 'User'