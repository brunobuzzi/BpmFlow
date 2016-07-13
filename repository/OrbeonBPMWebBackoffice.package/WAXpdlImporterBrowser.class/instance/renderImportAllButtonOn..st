Updating
renderImportAllButtonOn: html
	| cssClass |

	cssClass := (numberOfProcess = 1) ifTrue: ['import-all-button-1'] ifFalse: ['import-all-button-2'].

	html div class: cssClass; with: [
		(selectedUploads size = numberOfProcess) ifFalse: [^self].
					html anchor callback: [self importBizagiFiles];
						with: [html image url: (SEWAFFileLibrary / #actionsdocumentsaveasiconPng); 
								altText: ('Import All Files' translateFor: self session user); 
								title: ('Import All Files' translateFor: self session user)].
	]