other
createIsResumableColumn

	^SewafReportColumn renderBlock: [:each :html | html text: each isImportResumable] title: 'Is Resumable'