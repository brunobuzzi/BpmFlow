other
categoryColorColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html colorInput 
					attributeAt: 'title' put: ('Color' translateIn: self session);
					value: each color.] 
			title: ('Color' translateIn: self session)) sortBlock: nil; 
			yourself