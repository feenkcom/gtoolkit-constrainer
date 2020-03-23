private
writeQuotedValue: aString on: aStream
	| needsQuotes |
	needsQuotes := (aString includes: $,)
		or: [ aString notEmpty
				and:
					[ ('"''' includes: aString first) or: [ '"''' includes: aString last ] ] ].
	needsQuotes
		ifTrue: [ aStream
				nextPut: $";
				nextPutAll: (aString copyReplaceAll: '"' with: '""');
				nextPut: $" ]
		ifFalse: [ aStream nextPutAll: aString ]