tasks details
renderProcessMapOn: html

	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [taskListComposite ifNotNil: [taskListComposite viewSvgProcessMap]]; 
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('View Process Map' translateIn: self session);
					altText: ('View Process Map' translateIn: self session)].