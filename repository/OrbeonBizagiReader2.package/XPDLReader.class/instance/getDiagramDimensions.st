other
getDiagramDimensions
	| allPools xWidth yWidth |

	allPools := self getAllPools.
	allPools ifEmpty: [^0@0].
  
	xWidth:= (allPools collect: [:eachPool | eachPool getWidth + eachPool getXcoordinate]) asSortedCollection last.

	yWidth := (allPools collect: [:eachPool | eachPool getHeight + eachPool getYcoordinate]) asSortedCollection last.

	^(xWidth * 1.2) asInteger @ ((yWidth + 50) * 1.3) asInteger