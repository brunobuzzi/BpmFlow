other
setLateralPagingWith: value

	self session user lateralListPagingSize: ([(Number fromString: value)] on: Error do: [:err | ^self])