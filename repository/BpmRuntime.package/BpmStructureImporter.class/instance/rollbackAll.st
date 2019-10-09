import api
rollbackAll
	"The receiver rollback all <configurations> "
 
	configurations do: [:aUserGrantConfiguration | aUserGrantConfiguration rollbackConfiguration].