search area
renderRolesComboOn: html 
 
	^self renderRolesComboOn: html withRoles: ((self defaultApplicationManagerClass getRolesInAppName: self getApplicationName) collect: [:each | each name]) asSortedCollection