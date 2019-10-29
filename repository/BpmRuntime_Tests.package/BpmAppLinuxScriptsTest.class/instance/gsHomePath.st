other
gsHomePath
	| path |

	path := System performOnServer: 'echo $GS_HOME'.

	^path allButLast