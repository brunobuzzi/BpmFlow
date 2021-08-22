orbeon
generateEmbeddedUrlFor: aBpmTaskInstance uuid: uuid user: user s: seasideS k: seasideK params: postParamsArray

	^self orbeonManager orbeonIP, 
			'/orbeon/fr/', 
			(postParamsArray at: 4), '/', 
			(postParamsArray at: 5), '/edit/', 
			(postParamsArray at: 1),
			'?token=', uuid, 
			'&s=', seasideS,
			'&k=', seasideK, 
			'&oop=', aBpmTaskInstance asOop printString