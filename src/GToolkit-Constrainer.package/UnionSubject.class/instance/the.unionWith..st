as yet unclassified
the: aCollection unionWith: anotherCollection
	the := aCollection.
	otherCollection := anotherCollection.
	elements := the union: anotherCollection.
	^ self