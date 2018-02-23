other
renderContentOn: html
	| importTitle |

	html div id: 'import-forms'; with: [
		1 to: numberOfProcess do: [:index |
			self renderFormToUploadProcessOn: html index: index].

		html div id: 'add-new-import-form';
			with: [html div id: 'add-new-form-button'; with: [self renderAddNewImportFormButtonOn: html].
					html div id: 'remove-new-form-button'; with: [self renderRemoveImportFormButtonOn: html].
					self renderImportAllButtonOn: html].
	].

	(processGenerator notNil and: [processGenerator hasImportedProcesses]) ifFalse: [^self].

	importTitle := (processGenerator processes size > 1) ifTrue: ['Processes to Import'] ifFalse: ['Process to Import'].

	html div id: 'imported-processes-title'; with: [html output: (importTitle translateFor: self session user)].

	html div id: 'imported-processes'; with: [self renderSVGForImportedProcessesOn: html].