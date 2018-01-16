other
renderContentOn: html

	seasideK := self session requestContext request at: '_k' ifAbsent: ['error'].

	super renderContentOn: html.