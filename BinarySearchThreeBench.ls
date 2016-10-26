include ("Binary Three");

var _T = BST(new)( function (@a, @b) { return @(a < b); } );

debug('Insert in _T : { 10, 12 }');
_T(insert)(10);
_T(insert)(12);
debug(
	'_T contains 12 : ' +
	_T(contains)(12)
);
debug(
	'_T is empty : ' +
	_T(isEmpty)
);
debug(
	'_T count : ' +
	_T(count)
);
debug(
	'_T height : ' +
	_T(height)
);
debug('Insert in _T : { 8, 9, 16, 8 }');
_T(insert)(8);
_T(insert)(9);
_T(insert)(16);
_T(insert)(8);
debug(
	'_T at position 4 : ' +
	_T(getValueOf)(4)
);
debug(
	'_T contains 9 : ' +
	_T(contains)(9)
);
debug(
	'_T contains 5 : ' +
	_T(contains)(5)
);
debug(
	'_T count : ' +
	_T(count)
);
/*
var _T2 = BST(new)( function (@a, @b) { return @(a > b); } );
_T(prefix)( function (v) { _T2(insert)(v); } );
debug(
	'_T is equals to _T2 : ' +
	_T(equals)(_T2)
);

debug(
	'Instance of BS_T : ' +
	BS_T(getInstance)
);

debug('Debug PrefixPath of _T :');
_T(prefixPath)( function (v) { debug(v); } );

debug('Debug PrefixPath of _T2 :');
_T2(prefixPath)( function (v) { debug(v); } );
*/