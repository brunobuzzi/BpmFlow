import
renderContentOn: html
	| importTitle |

	model hasFormatErrors ifTrue: [self renderFormatErrorsOn: html].
	model hasImmutableProcesses ifTrue: [self renderImmutableExceptionOn: html].

	html div id: 'import-forms'; with: [
		self renderResetButtonOn: html.
		1 to: numberOfProcess do: [:index | self renderFormToUploadProcessOn: html index: index].

		html div id: 'add-new-import-form';
			with: [html div id: 'add-new-form-button'; with: [self renderAddNewImportFormButtonOn: html].
					html div id: 'remove-new-form-button'; with: [self renderRemoveImportFormButtonOn: html].
					self renderImportAllButtonOn: html].
	].

	model hasProcessGenerator ifFalse: [^self].
	model hasImmutableProcesses ifTrue: [^self].
	
	model isImportSuccessful
	ifTrue: [html div id: 'imported-processes-sucessful'; with: [html output: ('Successful Import' translateFor: self session user)].]
	ifFalse: [importTitle := (model numberOfGeneratedProcesses > 1) ifTrue: ['Processes to Import'] ifFalse: ['Process to Import'].
		html div id: 'imported-processes-title'; with: [html output: (importTitle translateFor: self session user)].
		html div id: 'imported-processes'; with: [self renderSVGForImportedProcessesOn: html]
	].