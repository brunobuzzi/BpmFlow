html generation
generateHtmlFor: anBpmArtifactInstance xml: xmlString params: anArray
	"Generate an HTML that does a redirect to Seaside app with _s and _k parameters.
	In Orbeon the send() command is configured with replace='all' "
	| doc seasideS seasideK url user |

	doc := XMLDOMParser parse: xmlString.
	seasideS := (doc findElementNamed: 's') rawContentString "stringNodes last string".
	seasideK := (doc findElementNamed: 'k') rawContentString "stringNodes last string".
	user := BpmUser getUserNamed: (doc findElementNamed: 'username') rawContentString "stringNodes last string".
	url := user orbeonWebIsLinked
		ifTrue: [self generateLinkedUrlFor_S: seasideS andK: seasideK]
		ifFalse: [self generateEmbeddedUrlFor: anBpmArtifactInstance user: user s: seasideS k: seasideK params: anArray].

	^user orbeonWebIsLinked 
		ifTrue: [self generateHtmlForRedirectTo: url]
		ifFalse: [self generateHtmlIframeParentRefresh: url]