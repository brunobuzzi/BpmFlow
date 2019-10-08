grant
applyConfigurationOnErrorRollback
	"The receiver apply the configuration into the System if there is an exception then rollback all given grants"

	[self applyConfiguration] on: Error do: [:ex | self rollbackConfiguration]