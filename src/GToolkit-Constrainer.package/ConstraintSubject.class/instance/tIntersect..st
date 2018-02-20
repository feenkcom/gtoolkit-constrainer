transformation
tIntersect: aCollection
	|intersectSubject otherSubject |
	intersectSubject := IntersectSubject new.
	otherSubject := ConstraintSubject new the: aCollection.
	intersectSubject merge: self with: otherSubject.
	^ intersectSubject.