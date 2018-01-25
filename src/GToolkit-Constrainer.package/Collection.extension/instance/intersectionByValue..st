*GToolkit-Constrainer
intersectionByValue: aCollection
	"Answer the set theoretic intersection of two dictionaries by comparing with the vallue and adding with the key."

	| output |
	output := Set new.
	aCollection
		do: [ :a | 
			self
				do: [ :b | 
					(a to = b to)
						ifTrue: [ 
							
							output add: a.
							output add: b.
							
							] ] ].
	^ output