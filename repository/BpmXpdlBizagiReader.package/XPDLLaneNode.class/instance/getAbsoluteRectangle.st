rectangle area
getAbsoluteRectangle
	"Answer a Rectangle that graphically represent the receiver"
	| xCoordinate yCoordinate |

	"the X and Y coordinates of the receiver does NOT includes the X and Y shift coordinate of the Pool.
	Lanes have a Relative Position (to their parent pool).
	Only for Lanes the shift is NOT included BUT Activity Nodes have an Absolute Position"
	xCoordinate := (self getXcoordinate) + (pool getXcoordinate). 
	yCoordinate := (self getYcoordinate) + (pool getYcoordinate). 

	^Rectangle 
		origin: (xCoordinate @ yCoordinate) 
		extent: (self valueOf: 'width') @ (self valueOf: 'height')