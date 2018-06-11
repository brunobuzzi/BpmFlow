search area
renderRolesComboOn: html
	| roles |

	roles := ((self session user getVisibleRoles select: [:each | each getApplicationName = self getApplicationName]) asSortedCollection: [:a :b | a name <= b name]) 
					collect: [:each | each name].
	roles := (Array with: ('All' translateFor: self session user)), roles.

	^self renderGenericActiveComboOn: html
			withList: roles
			forVariable: 'role-name' 
			label: ('Role' translateFor: self session user)