other
renderTakeTaskIconOn: html for: aBpmTaskAssignment

	html div class: 'monitor-list-icon'; with: [
		html anchor callback: [self takeTask: aBpmTaskAssignment];
			with: [html image url: (SEWAFIconLibrary / #tasks32Png); 
						altText: 'Take Task';
						title: 'Take Task'].].

	html div class: 'monitor-list-icon-2'; with: [
		html anchor callback: [self takeTaskAndGo: aBpmTaskAssignment];
			with: [html image url: (SEWAFIconLibrary / #applicationarrowright32Png); 
						altText: 'Take Task and Go';
						title: 'Take Task and Go'].].