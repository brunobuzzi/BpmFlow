bpm roles
removeRole: aBpmRole in: appName
	| application |

	application := self applicationNamed: appName ifNone: [^NoApplicationException signal: 'No Application named <', appName, '>'].

	^application removeRole: aBpmRole ifAbsent: [^NoSuchRoleException signal: 'No Role named <', aBpmRole name, '>'].