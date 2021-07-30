os files deployment
deleteUnusedOSFiles: usedDictionaryIds pathSelector: pathSelector
	"Delete unused OS files from calculated <pathSelector> that are no included in the dictionary <usedDictionaryIds>.
	<usedDictionaryIds> key is (app.formName) and value is a collection of ids."

	usedDictionaryIds keysAndValuesDo: [:appForm :collectionId | | path app form currentFiles |
		app := (appForm subStrings: '.') first.
		form := (appForm subStrings: '.') second.
		path := self getOrbeonWebServerConfiguration perform: pathSelector with: form with: app."get tha path for <app> and <form>"
		currentFiles := ((GsFile contentsOfDirectory: path onClient: false) "get all current files in <path>"
			reject: [:eachPathFile | ((eachPathFile subStrings: '/') last = '.') or: [(eachPathFile subStrings: '/') last = '..']])
			collect: [:each | (each subStrings: '/') last].
		"remove files from <path> that are not included in <collectionId> block argument"
		currentFiles do: [:eachPathFile | (collectionId includes: eachPathFile) ifFalse: [GsFile removeServerFile: path, eachPathFile]].
	]