search area
renderRolesComboOn: html 
 
	^self renderRolesComboOn: html withRoles: ((self defaultFrontOfficeRoleClass getRolsInAppName: self getApplicationName) collect: [:each | each name]) asSortedCollection