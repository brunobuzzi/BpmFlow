other
ungrantAllRoles
		"The receiver ungrant all roles "

		roles do: [:each | each basicRemoveResponsibility: self].

		roles := OrderedCollection new.