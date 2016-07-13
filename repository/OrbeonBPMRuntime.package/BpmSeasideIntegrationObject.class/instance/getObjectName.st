other
getObjectName
	"Answer the name of the receiver to be used as a key to store fields values"

	^self class getObjectName

"the values of a Orbeon Form and a SeasideModel will be stored in same structure.
No problem so far, even it can be an Orbeon field with the same name as a SeasideModel field.
The only problem here is if the type are different --> can not be stored in the same RC collection "