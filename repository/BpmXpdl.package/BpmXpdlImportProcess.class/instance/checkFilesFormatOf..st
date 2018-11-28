import
checkFilesFormatOf: pathFileArray

	pathFileArray do: [:eachPathFile | | file contents |
		file := FileStream fileNamed: eachPathFile.
		contents := file contents.
		file close.
		[XMLDOMParser parse: contents] 
			on: Error 
			do: [:err | fileFormatErrors at: (eachPathFile subStrings: '/') last put: err description.]].

	^fileFormatErrors isEmpty