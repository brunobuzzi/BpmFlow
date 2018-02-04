roles
printRoleNames
	| names |

	roles ifEmpty: [^''].

	names := ''.
	roles do: [:each | names := names, each name, ' | ' ].

	^names allButLast: 3