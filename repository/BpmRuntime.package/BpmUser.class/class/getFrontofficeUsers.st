user query
getFrontofficeUsers

	^self cache select: [:each | each isFrontOfficeUser]