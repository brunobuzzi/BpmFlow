other
preOrderDo: aBlock

	self roots do: [:each | self preOrderDo: aBlock on: each]