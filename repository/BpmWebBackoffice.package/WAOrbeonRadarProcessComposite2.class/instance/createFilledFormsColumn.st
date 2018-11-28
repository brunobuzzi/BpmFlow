other
createFilledFormsColumn

	^(SewafReportColumn selector: #printRunningArtifacts title: ('Filled Forms' translateFor: self session user))
		cssClass: 'max-width-td';
		yourself