private
csvReportOn: aStream
	| sortedConstraints |
	sortedConstraints := report constraints
		asSortedCollection: [ :a :b | a name < b name ].
	sortedConstraints
		do: [ :each | self writeQuotedValue: each name on: aStream ]
		separatedBy: [ aStream nextPut: $, ].
	aStream cr.
	sortedConstraints
		do: [ :each | 
			| status |
			status := each status.
			status isWithIssues
				ifTrue: [ aStream print: status issues size ]
				ifFalse: [ aStream
						nextPutAll:
							(status isWithError
								ifTrue: [ 'error' ]
								ifFalse: [ '0' ]) ] ]
		separatedBy: [ aStream nextPut: $, ]