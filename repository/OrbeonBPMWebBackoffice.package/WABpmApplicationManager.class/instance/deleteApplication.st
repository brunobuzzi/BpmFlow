other
deleteApplication
	| application selectedApp |

	selectedApplications isEmpty ifTrue: [^self].
	selectedApp := selectedApplications last.
	(selectedApp size <= 9) ifTrue: [^self].

	application := AbstractApplication getAnyApplicationNamed: (selectedApp allButLast: 9) ifNone: [^self].

	application canDelete ifFalse: [^self].

	application removeFromCache