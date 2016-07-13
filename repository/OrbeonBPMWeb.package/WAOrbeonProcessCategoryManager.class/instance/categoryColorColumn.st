other
categoryColorColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html colorInput 
					attributeAt: 'title' put: ('Color' translateFor: self session user);
					value: each color.] 
			title: 'Color') sortBlock: nil; 
			yourself