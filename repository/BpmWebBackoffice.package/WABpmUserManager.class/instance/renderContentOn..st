other
renderContentOn: html
	| jsEcElement |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAndNewFormOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement.].

	html div id: 'users-configuration'; with: [
		html div id: 'system-users'; class: 'default-gray-table ';
			with:[html render: (usersBatchedList table: self sewafTableForUsers)].
		selectedObject ifNil: [^self].
		isAddingRol ifTrue: [^self renderAddingRolOn: html].
		html div id: 'add-rol-button'; 
			with: [self renderAddRolButtonOn: html].

		html div id: 'users-and-rols'; with: [
				html div class: 'default-gray-table ';
					with:[userRolesBatchedList items: (selectedObject rolesIn: self session bpmEnvironment).
							html render:  (userRolesBatchedList table: self sewafTableRolsOfUser).
				]
		]
	].