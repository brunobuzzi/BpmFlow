other
renderContentOn: html
	| widthClass |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html.].

	showLateralList ifTrue: [
		html div id: 'lateral-definition-list'; class: 'lateral-left-list'; 
			with: [self renderLateralListOn: html]].

	widthClass := showLateralList ifFalse: ['lateral-right-component-width100'] ifTrue: ['lateral-right-component-width80'].

	html div id: 'process-definition'; class: ('lateral-right-component ', widthClass);
		with: [self renderCompleteItemOn: html].