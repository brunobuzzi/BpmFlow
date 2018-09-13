other
createNewCategory

	model name ifEmpty: [^self].
 
	model addToCacheIn: self session user username.

	batchedList add: model.

	model := self defaultCategoryClass new.