other
getUserName

	externalObject ifNil: [^''].

	^externalObject valueAt: 'username'