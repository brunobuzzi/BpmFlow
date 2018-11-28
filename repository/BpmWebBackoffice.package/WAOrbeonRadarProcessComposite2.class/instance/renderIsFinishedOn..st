search area
renderIsFinishedOn: html

	html div class: 'top-search-div width-100px'; with: [
		html label: [ 
			html checkbox class: 'margin-top-20px float-left';
				value: (searchValues at: 'filter-finished' ifAbsent: [false]);
				callback: [ :value | self onCheckboxFinishedChanged: value ].
		html text: ('Finished ?' translateFor: self session user).].
	].