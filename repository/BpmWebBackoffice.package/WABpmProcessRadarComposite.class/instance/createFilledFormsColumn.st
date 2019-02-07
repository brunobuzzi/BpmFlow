other
createFilledFormsColumn

	^(SewafReportColumn selector: #printRunningArtifacts title: ('Filled Forms' translateIn: self session))
		cssClass: 'max-width-td';
		yourself