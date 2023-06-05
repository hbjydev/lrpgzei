/*
Rotate object around own x,y,z axis
By bapedibupa

Parameters: [object,angle]
Returns: nothing

Rotates an object, giving it the specified rotation angle around his own axis, in degrees.

The rotation is about the coordinates from the object.

A positive number rotates the object in positive axis rotation. Negative numbers in the other direction.
Positive axis rotation means when you take your right hand, make a fist and spread out your thumb, make sure that the thumb is heading in positive axis direction: Your other fingers show you now the positive rotation around this axis.

All 3 functions rotate the object relative to its previous direction. You also can combine all 3 functions togheter by calling one funtion after the other. You even can use the same function twice whenever needed.

If you use the functions in combination with attachTo use first the attachTo command an then this functions.

Never Use setDir after one of this funtions, it resets previous direction.

Example:	[object, 45] call rotateAroundOwnAxisX;		// the object turn 45Â° back
		[object, -90] call rotateAroundOwnAxisZ;	// the object turn 90Â° clockwise, but still looking north and 45Â° back


*/

// find object and rotation angle
params [["_object", objNull], ["_angle", 0]];

// get current vector dir and up
_dir = vectorDir _object;
_dir params ["_dirX", "_dirY", "_dirZ"];
(vectorUp _object) params ["_upXTemp", "_upYTemp", "_upZTemp"];

// set cos and sin
_cos = cos _angle;
_sin = sin _angle;

// calculate new vector up
_upX = _upXTemp*(_dirX*_dirX*(1-_cos)+_cos) + _upYTemp*(_dirX*_dirY*(1-_cos)-_dirZ*_sin) + _upZTemp*(_dirX*_dirZ*(1-_cos)+_dirY*_sin);
_upY = _upXTemp*(_dirY*_dirX*(1-_cos)+_dirZ*_sin) + _upYTemp*(_dirY*_dirY*(1-_cos)+_cos) + _upZTemp*(_dirY*_dirZ*(1-_cos)-_dirX*_sin);
_upZ = _upXTemp*(_dirZ*_dirX*(1-_cos)-_dirY*_sin) + _upYTemp*(_dirZ*_dirY*(1-_cos)+_dirX*_sin) + _upZTemp*(_dirZ*_dirZ*(1-_cos)+_cos);

// set vetor dir and up
_object setVectorDirAndUp [_dir,[_upX,_upY,_upZ]];