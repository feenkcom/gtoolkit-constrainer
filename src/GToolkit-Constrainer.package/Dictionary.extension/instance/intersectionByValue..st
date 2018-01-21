*GToolkit-Constrainer
intersectionByValue: aDictionary
	"Answer the set theoretic intersection of two dictionaries by comparing with the vallue and adding with the key."

	| output |
	output := Dictionary new.
	
	aDictionary associationsDo: [ :each|
		((self values includes: each value) and: [(output keys includes: each key) not])
			ifTrue: [ 
				output add: each]].
		
	^ output