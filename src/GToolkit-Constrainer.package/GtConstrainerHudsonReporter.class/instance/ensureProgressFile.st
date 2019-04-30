private
ensureProgressFile
	| aFile |
	aFile := File named: 'progress-constraints.xml'.
	aFile delete.
	resultsStream := ZnCharacterWriteStream
		on: (aFile writeStream setToEnd; yourself)
		encoding: 'utf8'.