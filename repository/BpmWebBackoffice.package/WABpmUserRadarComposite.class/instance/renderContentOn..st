other
renderContentOn: html
	| jsEcElement |

	(self componentValueAt: 'alert') ifNotNil: [:alertString | 
		html document addLoadScript: (html javascript alert: alertString).
		self removeValueNamed: 'alert'].

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; 
		with: [self renderSearchOptionsOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement.].

	html div id: 'radar'; with: [
		html div id: 'radar-users'; class: 'default-gray-table ';
				with:[self renderUsersListOn: html].

		selectedObject ifNil: [^self].

		html div id: 'radar-processes-list'; class: 'default-gray-table ';
			with:[self renderTableWithTasksOn: html.]
	].