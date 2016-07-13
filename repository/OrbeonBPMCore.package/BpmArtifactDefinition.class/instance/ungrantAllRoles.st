other
ungrantAllRoles
		"The receiver ungrant all roles "

		roles do: [:each | each removeResponsibility: self].

		roles := OrderedCollection new.