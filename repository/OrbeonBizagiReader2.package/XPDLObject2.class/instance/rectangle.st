graphics
rectangle
	"Answer a Rectable that graphically represent the receiver"

	^Rectangle 
		origin: (self getXcoordinate @ self getYcoordinate) 
		extent: (self valueOf: 'width') @ (self valueOf: 'height')