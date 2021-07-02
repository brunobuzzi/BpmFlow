permissions
selectFormsInstancesWithPermissionsFrom: collectionOfForms
	| allPermissions hasReadPermissionOnAll hasOwnerPermission hasGroupPermission rolesWithReadPermission |

	self hasPermissionsEnabled ifFalse: [^collectionOfForms].

	allPermissions := invertedPermissions at: 'read' ifAbsent: [^collectionOfForms].
	hasOwnerPermission := allPermissions includesSubString: 'owner'.
	hasGroupPermission := allPermissions includesSubString: 'group-member'.
	rolesWithReadPermission := allPermissions subStrings: ' '.
	rolesWithReadPermission remove: 'owner' ifAbsent: []; remove: 'group-member' ifAbsent: [].

	"the user has any of its <roles> included on form definition <rolesWithReadPermission> --> has read permission on all"
	hasReadPermissionOnAll := (userCredentials intersection: rolesWithReadPermission) notEmpty.

	hasReadPermissionOnAll ifTrue:[^collectionOfForms].

	^collectionOfForms select: [:each | 
			(hasOwnerPermission not or: [hasOwnerPermission and: [each username = user]]) or: 
			[hasGroupPermission not or: [hasGroupPermission and: [each groupname = group]]] ]