other
getComboBoxListFor: aBpmUser

	^Array with: (BpmUserQueryOperation getComboBoxNameFor: aBpmUser) 
				with: (BpmSystemQueryOperation getComboBoxNameFor: aBpmUser)