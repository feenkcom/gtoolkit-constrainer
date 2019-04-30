private
ensureResultsFile
	| aFile |
	aFile := File named: self reportName, '.xml'.
	aFile delete.
	progressStream := ZnCharacterWriteStream
		on: (aFile writeStream setToEnd; yourself)
		encoding: 'utf8'.