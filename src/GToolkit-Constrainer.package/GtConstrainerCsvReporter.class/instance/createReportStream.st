private
createReportStream
	| filename |
	filename := (self reportName , '.csv') asFileReference.
	filename ensureDelete.
	^ ZnNewLineWriterStream on: filename writeStream