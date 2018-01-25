instance creation
from: anObject to: anotherObject
	|newBiElement|
	newBiElement := BiElement new.
	newBiElement to: anotherObject. 
	newBiElement from: anObject.
	^ newBiElement 