search area
renderUsersComboOn: html
	| users |

	users := (((self session user getVisibleUsersIn: self session bpmEnvironment) asSortedCollection: [:a :b | a username <= b username]) collect: [:each | each username]).
	users := (Array with: ('All' translateIn: self session)), users. 

	^self renderGenericActiveComboOn: html 
			withList: users
			forVariable: 'user-name' 
			label: ('User' translateIn: self session)