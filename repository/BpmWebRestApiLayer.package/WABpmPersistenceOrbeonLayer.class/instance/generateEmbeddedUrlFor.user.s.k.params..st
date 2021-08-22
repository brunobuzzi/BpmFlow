url generation
generateEmbeddedUrlFor: aBpmTaskInstance user: user s: seasideS k: seasideK params: postParamsArray
	"http://orbeonIP:port/orbeon/fr/[app]/[formulario]/edit/[formId]
	The form is saved and displayed again as a iframe inside GemStone application"
	| uuid |

	uuid := self systemRoot createEntryToOrbeonFor: aBpmTaskInstance for: user.

	^self systemRoot 
				generateEmbeddedUrlFor: aBpmTaskInstance 
				uuid: uuid 
				user: user 
				s: seasideS 
				k: seasideK 
				params: postParamsArray