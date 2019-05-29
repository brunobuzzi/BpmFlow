import
checkFilesFormatOf: pathFileArray
	"The receiver check the file format of all files contained in collection <pathFileArray>.
	If there is a parse error then store the file and the error in <fileFormatErrors> dictionary"

	pathFileArray do: [:eachPathFile | | file contents |
		file := FileStream fileNamed: eachPathFile.
		contents := file contents.
		file close.
		[XMLDOMParser parse: contents] 
			on: Error 
			do: [:err | fileFormatErrors at: (eachPathFile subStrings: '/') last put: err description.]].

	^fileFormatErrors isEmpty