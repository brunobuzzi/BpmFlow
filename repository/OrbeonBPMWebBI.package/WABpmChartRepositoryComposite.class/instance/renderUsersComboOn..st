search area
renderUsersComboOn: html

	^self renderGenericActiveComboOn: html 
			withList: ((self session user getVisibleUsers asSortedCollection: [:a :b | a username <= b username]) collect: [:each | each username])
			forVariable: 'user-name' 
			label: ('User' translateFor: self session user)