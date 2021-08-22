other
createCodeColumn

	^SewafReportColumn 
		renderBlock: [:each :html | 
			html anchor
				target: '_blank';
				callback: [self requestContext redirectTo: (self session systemRoot baseUrlDocumentation,'/application-manuals/backoffice-manual/main-menu/processes/define-new-process/import-errors-codes')];
				with: each code
		] 
		title: 'Code'