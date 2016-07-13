other
setRegularPagingWith: value

	self session user regularListPagingSize: ([(Number fromString: value)] on: Error do: [:err | ^self])