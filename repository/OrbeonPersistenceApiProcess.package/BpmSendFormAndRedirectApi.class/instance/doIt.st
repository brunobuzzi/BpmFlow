other
doIt
	"POST service to process an Orbeon XML form with id <id> language <lan> for the <OrbeonApplication> named <app> for <OrbeonPublishedFormDefinition> named <form>.
	1- Register the XML in the system and update Domain Objects.
	2- With data context inside the XML (inside the post) generate an url link to the previous page but with domain data updated.
	3- The POST service answer a HTML code with a redirect (with javascript) to the url build in step 2."
	| instance |

	instance := self getOrbeonApplicationClass getAnyInstanceWith: id formName: formName in: appName	
						ifNone: [self getOrbeonApplicationClass getAnyDraftWith: id formName: formName in: appName	
										ifNone: [^self signalNoFormException: formName id: id app: appName version: version]].

	^self processAndRedirectForm: instance