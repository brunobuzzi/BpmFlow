other
importIcon: aFile
	| pathFile |

	pathFile := (FileDirectory default directoryNamed: 'tmp') pathName , '/', aFile fileName.

	SEWAFIconLibrary addFileAt: pathFile.

	^SEWAFIconLibrary asSelector: aFile fileName