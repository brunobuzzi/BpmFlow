other
getSecureValueForToken: uuidToken
	"The receiver answer a XML String associated with the token value <uuidToken>"
	| result |

	(tokens includesKey: uuidToken) 
	ifTrue: [result := tokens at: uuidToken.
"				failedTokens add: (Array with: 'ok' with: uuidToken). "
				tokens removeKey: uuidToken ifAbsent: [].
	"			results add: (Array with: 'answer' with: result). "
				^result].

	failedTokens add: (Array with: 'failed' with: uuidToken with: TimeStamp current).

	^nil