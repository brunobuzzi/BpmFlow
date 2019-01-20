cache
canDelete

	(self class adminEnvironmentName = name) ifTrue: [^false]. "[admins] environment can no be deleted"

	^applications isEmpty and:[users isEmpty]