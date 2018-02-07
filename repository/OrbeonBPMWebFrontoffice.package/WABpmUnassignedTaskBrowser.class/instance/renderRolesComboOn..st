other
renderRolesComboOn: html
	| roles appName |

	appName := searchValues at: 'application' ifAbsent: [''].
	roles := appName isEmpty
		ifFalse: [self session user roles select: [:each | each getApplicationName = appName] thenCollect: [:each | each name]]
		ifTrue: [#()].

	html label attributeAt: 'for' put: 'roles'; with: ('Roles' translateFor: self session user).
	html select "Process Definition List"
		attributeAt: 'id' put: 'roles'; 
		list: (#(''), roles asArray) asSortedCollection;
		callback: [:roleName | self onRoleChanged: roleName];
		selected: (searchValues at: 'role' ifAbsent: ['']).