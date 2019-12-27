other
testGetTopReceiverFrom
	
	analyzer blockCode: '[:proc :script| ZnClient new https; post: ''test.url.info'' contents: ''some data'']'.
	analyzer analyze.
	(analyzer parsedNode allChildren select: [:each | each isMessage]) do: [:each | | topReceiver |
		topReceiver := analyzer getTopReceiverInMessage: each.
		self assert: (topReceiver name = 'ZnClient').
	].

	analyzer blockCode: 'ZnClient new https; post: ''test.url.info'' contents: ''some data'''.
	analyzer analyze.
	(analyzer parsedNode allChildren select: [:each | each isMessage]) do: [:each | | topReceiver |
		topReceiver := analyzer getTopReceiverInMessage: each.
		self assert: (topReceiver name = 'ZnClient').
	].


	analyzer blockCode: '[:proc :script| | flow | flow := ZnClient new https; post: ''test.url.info'' contents: ''some data'']'.
	analyzer analyze.
	(analyzer parsedNode allChildren select: [:each | each isCascade]) do: [:each | | topReceiver |
		topReceiver := analyzer getTopReceiverInAssignment: each.
		self assert: (topReceiver name = 'ZnClient').
	].