search area
renderRolesComboOn: html withRoles: roleNames

	^self renderGenericActiveComboOn: html withList: (self getAllArray, roleNames) forVariable: 'role' label: ('Role' translateIn: self session)