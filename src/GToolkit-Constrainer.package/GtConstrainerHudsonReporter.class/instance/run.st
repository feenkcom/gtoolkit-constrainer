running
run
	[ self setUp.
	executionTime := [ self runAll ] timeToRun ] ensure: [ self tearDown ]