other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; with: [self renderNewRoleFormOn: html].

	html div id: 'system-rols'; class: 'default-gray-table '; with:[html render: (rolesBatchList table: self sewafTableForRoles).].
	self renderAddRoleOn: html. 
	selectedObject ifNil: [^self].
	isAddingUser ifTrue: [^self renderAddingUserOn: html].
	html div id: 'add-user-button'; with: [self renderAddUserButtonOn: html].

	html div id: 'rols-and-users'; with: [
			html div id: 'rols-users'; class: 'default-gray-table ';
				with:[usersWithSelectedRoleBatchList items: selectedObject users asArray.
							html render: (usersWithSelectedRoleBatchList table: self sewafTableUsersWithRol)].
			selectedUser ifNotNil: [
				html div id: 'user-rols'; class: 'default-gray-table ';
					with:[rolesWithSelectedUserBatchList items: (selectedUser rolesIn: self session bpmEnvironment).
								html render: (rolesWithSelectedUserBatchList table: self sewafTableRolsOfUser).]]].