render
renderGraphOn: html
	| jQueryId |

	jQueryId := self renderJQueryInformationDialogOn: html 
							title: 'Information' 
							information: ('Chart Saved !' translateFor: self session user) 
							buttonLabel: ('Close' translateFor: self session user) 
							actionMethod: #saveChart.
	html div 
		class: 'display-inline-flex margin-left-5px width-100per height100per';
		with: [ 
			html div 
				class: 'margin-top-5px';
				with: [
					html anchor 
						class: 'cursor-pointer';
						onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsdocumentsaveas24Png); 
										altText: ('Save Chart' translateFor: self session user); 
										title: ('Save Chart' translateFor: self session user)].
				].

			html div id: 'orbeon-graph'; class: 'overflow-scroll height100per width-100per'; with: [html html: canvas contents].
		].