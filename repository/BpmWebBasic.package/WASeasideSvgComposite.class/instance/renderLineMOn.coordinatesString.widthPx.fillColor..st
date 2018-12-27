line m
renderLineMOn: html coordinatesString: coordinatesString widthPx: widthPx fillColor: color

	^self renderLineMOn: html coordinatesString: coordinatesString id: UUID new asString widthPx: widthPx stroke: self defaultLineStroke fillColor: color