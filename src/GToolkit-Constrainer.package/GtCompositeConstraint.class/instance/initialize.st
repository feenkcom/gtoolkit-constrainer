initialization
initialize
	super initialize.
	status := GtNeutralConstraintStatus new.
	constraints := OrderedCollection new