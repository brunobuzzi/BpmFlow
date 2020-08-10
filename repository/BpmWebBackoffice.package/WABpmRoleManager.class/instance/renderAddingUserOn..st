other
renderAddingUserOn: html

	html div id: 'users-to-add'; class: 'default-gray-table ';
		with:[addUserToRoleBatchList hasSearchSelector 
				ifFalse: ["if <orderMode> is true --> the user list has been sorted and it is already with the correct items"
					addUserToRoleBatchList hasOrderMode 
					ifFalse: [addUserToRoleBatchList items: (self session bpmEnvironment usersReject: [:each | selectedObject isGranted: each]) asArray]].
				html render: (addUserToRoleBatchList table: self sewafTableForUsers)].