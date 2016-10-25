include ("BinaryThree");

var T = BST(new)( function (@a, @b) { return @(a < b); } );

debug('Insert in T : { 10, 12 }');
T(insert)(10)(12);
debug(
	'T contains 12 : ' +
	T(contains)(12)
);
debug(
	'T is empty : ' +
	T(isEmpty)
);
debug(
	'T count : ' +
	T(count)
);
debug(
	'T height : ' +
	T(getHeight)
);
debug('Insert in T : { 8, 9, 16, 8 }');
T(insert)(8)(9)(16)(8);
debug(
	'T at position 4 : ' +
	T(get)(4)
);
debug(
	'T contains 9 : ' +
	T(contains)(9)
);
debug(
	'T contains 5 : ' +
	T(contains)(5)
);
debug(
	'T count : ' +
	T(count)
);

var T2 = BST(new)( function (@a, @b) { return @(a > b); } );
T(prefixPath)( function (v) { T2(insert)(v); } );
debug(
	'T is equals to T2 : ' +
	T(equals)(T2)
);

debug(
	'Instance of BST : ' +
	BST(getInstance)
);

debug('Debug PrefixPath of T :');
T(prefixPath)( function (v) { debug(v); } );

debug('Debug PrefixPath of T2 :');
T2(prefixPath)( function (v) { debug(v); } );
