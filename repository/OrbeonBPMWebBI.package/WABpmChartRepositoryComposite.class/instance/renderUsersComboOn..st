search area
renderUsersComboOn: html
	| users |

	users := ((self session user getVisibleUsers asSortedCollection: [:a :b | a username <= b username]) collect: [:each | each username]).
	users := (Array with: ('All' translateFor: self session user)), users. 

	^self renderGenericActiveComboOn: html 
			withList: users
			forVariable: 'user-name' 
			label: ('User' translateFor: self session user)