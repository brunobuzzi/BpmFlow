other
tearDown
	| application |

	super tearDown.

	application := self defaultApplicationManagerClass getAnyApplicationNamed: self defaultApplicationName ifNone: [^self].

	application resetDefinitionRegistry.
	(self defaultFrontOfficeRoleClass getRolsInAppName: application applicationName) do: [:each | each removeFromCache].

	application removeFromCache.