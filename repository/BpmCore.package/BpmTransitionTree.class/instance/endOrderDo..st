visiting
endOrderDo: aBlock

	self roots do: [:each | self endOrderDo: aBlock on: each]