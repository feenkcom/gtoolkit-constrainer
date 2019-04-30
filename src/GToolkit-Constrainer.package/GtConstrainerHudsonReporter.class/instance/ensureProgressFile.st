private
ensureProgressFile
	| aFile |
	aFile := File named: 'progress-constraints.log'.
	aFile delete.
	progressStream := ZnCharacterWriteStream
		on: (aFile writeStream setToEnd; yourself)
		encoding: 'utf8'.