other
renderAddingUserOn: html

	html div id: 'users-to-add'; class: 'default-gray-table ';
		with:[addUserToRoleBatchList hasSearchSelector 
				ifFalse: [addUserToRoleBatchList items: (BpmUser cache reject: [:each | selectedObject isGranted: each]) asArray].
				html render: (addUserToRoleBatchList table: self sewafTableForUsers)].