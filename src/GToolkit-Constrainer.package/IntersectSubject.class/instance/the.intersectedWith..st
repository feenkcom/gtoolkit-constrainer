as yet unclassified
the: aCollection intersectedWith: anotherCollection
	the := aCollection.
	otherCollection := anotherCollection.
	elements := the intersection: anotherCollection.
	^ self