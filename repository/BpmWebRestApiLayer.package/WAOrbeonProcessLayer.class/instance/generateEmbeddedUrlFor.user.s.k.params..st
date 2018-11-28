url generation
generateEmbeddedUrlFor: anOrbeonFormTransition user: user s: seasideS k: seasideK params: postParamsArray
	"http://orbeonIP:port/orbeon/fr/[app]/[formulario]/edit/[formId]
	The form is saved and displayed again as a iframe inside GemStone application"
	| uuid |

	uuid := BpmOrbeonTempTokenRegistry default 
					createEntryToOrbeonFor: anOrbeonFormTransition 
					for: user.

	^self getOrbeonWebServerConfiguration orbeonIP,
			'/orbeon/fr/', 
			(postParamsArray at: 4), '/', 
			(postParamsArray at: 5), '/edit/', 
			(postParamsArray at: 1),'?token=', uuid, '&s=', seasideS,'&k=', seasideK, '&oop=', anOrbeonFormTransition asOop printString