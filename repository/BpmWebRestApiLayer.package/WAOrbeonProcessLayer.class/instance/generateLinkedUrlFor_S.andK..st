url generation
generateLinkedUrlFor_S: seasideS andK: seasideK
	"Answer a url to do the redirect to the GemStone application again.
	The Orbeon form is closed and is redirected to GemStone applicaiton"

	^self getGemStoneServerConfiguration gemstoneIP,'/bpmflow-frontoffice?_s=', seasideS, '&_k=', seasideK