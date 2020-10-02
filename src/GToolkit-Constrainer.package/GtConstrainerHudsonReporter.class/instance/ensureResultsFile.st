private
ensureResultsFile
	| aFile |
	aFile := File named: self resultsFileName.
	aFile delete.
	resultsStream := ZnCharacterWriteStream
		on: (aFile writeStream setToEnd; yourself)
		encoding: 'utf8'.