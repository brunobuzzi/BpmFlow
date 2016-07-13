roles
roleName
	| roleName |

	roleName := ''.
	roles isEmpty ifTrue: [^'[]'].

	roles do: [:each | roleName := roleName, '[', each name, ']'].

	^roleName