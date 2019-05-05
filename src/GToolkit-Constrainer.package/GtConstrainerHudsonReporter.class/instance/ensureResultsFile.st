private
ensureResultsFile
	| aFile |
	aFile := File named: self reportName, '.xml'.
	aFile delete.
	resultsStream := ZnCharacterWriteStream
		on: (aFile writeStream setToEnd; yourself)
		encoding: 'utf8'.