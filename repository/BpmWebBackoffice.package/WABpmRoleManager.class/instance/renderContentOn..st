other
renderContentOn: html
	| jsEcElement |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; 
		with: [self renderSearchRoleFormOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement].

	html div id: 'system-rols'; class: 'default-gray-table '; with:[html render: (rolesBatchList table: self sewafTableForRoles).].

	selectedObject ifNil: [^self].
	isAddingUser ifTrue: [^self renderAddingUserOn: html].
	html div id: 'add-user-button'; with: [self renderAddUserButtonOn: html].

	html div id: 'rols-and-users'; with: [
			html div id: 'rols-users'; class: 'default-gray-table ';
				with:[selectedObject usersDo: [:user | usersWithSelectedRoleBatchList items add: user].
						html render: (usersWithSelectedRoleBatchList table: self sewafTableUsersWithRol)].
			selectedUser ifNotNil: [
				html div id: 'user-rols'; class: 'default-gray-table ';
					with:[rolesWithSelectedUserBatchList items: (selectedUser rolesIn: self session bpmEnvironment).
								html render: (rolesWithSelectedUserBatchList table: self sewafTableRolsOfUser).]]].