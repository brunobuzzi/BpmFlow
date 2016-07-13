operations
createNewRolIn: anAbstractApplication
	| newRole |

	anAbstractApplication ifNil: [^self].

	newRole := model addToCacheInAppName: anAbstractApplication applicationName.
	model application: anAbstractApplication.

	"the role has been added because #addToCacheInAppName: has answer the same role"
	(newRole == model) ifTrue: [rolesBatchList add: model.].

	model := (isBackoffice ifTrue: [BpmBackofficeRole] ifFalse: [BpmFrontOfficeRole]) new.

	"^self answer."