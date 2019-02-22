url generation
generateLinkedUrlFor: anBpmArtifactInstance s: seasideS andK: seasideK
	"Answer a url to do the redirect to the GemStone application again.
	The Orbeon form is closed and is redirected to GemStone applicaiton"
	| seasideApplicationName |

	seasideApplicationName := anBpmArtifactInstance bpmEnvironment seasideApplicationName.

	^self getGemStoneServerConfiguration gemstoneIP,'/', seasideApplicationName ,'?_s=', seasideS, '&_k=', seasideK