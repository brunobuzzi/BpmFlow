other
renderContentOn: html
	| jsEcElement |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; 
		with: [self renderSearchUserGroupOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement].

	html div id: 'system-users-groups'; class: 'default-gray-table '; with:[html render: (usersGroupsBatchedList table: self sewafTableForUserGroups).].