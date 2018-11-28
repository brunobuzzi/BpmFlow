other
applyImportedConfiguration

	importedConfigurationBatchList items do: [:each | each applyConfiguration].

	self sewafTableForGrantConfiguration information: 'The Configuration has been imported !' color: 'green'.