roles
getMatchedRolesWith: aBpmUser
	"The receiver answer a collection of roles that are present in its <roles> collection and in the user <aBpmUser>"

	^roles intersection: aBpmUser roles