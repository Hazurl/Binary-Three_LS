// Binary Search three
global BST = @(function () {
	var _new = @function (@OrderFunction) {
		var _root;
		var _orderFunction = @OrderFunction;
		var _count = @0;

		var Three = @function (@_cmd) {
			if (_cmd === new)
				return @function (@value) {
					return @(function () {
						var _value = @value;
						var _left;
						var _right;
						return function (@cmd) {
							if (cmd === getValue)
								return @_value;
							if (cmd === getLeftBranch)
								return _left;
							if (cmd === getRightBranch)
								return _right;
							if (cmd === setValue)
								return @function (@val) {
									_value = @val;
								};
							if (cmd === setLeftBranch)
								return @function (@left) {
									_left = @left;
								};
							if (cmd === setRightBranch)
								return @function (@right) {
									_right = @right;
								};

							
							if (cmd === insert) 
								return @function (@__value) {
									if (_orderFunction(_value, __value)) {
										if (_right === null)
											_right = Three(new)(__value);
										else
											_right(insert)(__value);
									} else {
										if (_left === null)
											_left = Three(new)(__value);
										else 
											_left(insert)(__value);
									}
								};
							if (cmd === prefix)
								return function (@f) {
									f(_value);
									if (_left !== null)
										_left(prefix)(f);
									if (_right !== null)
										_right(prefix)(f);
								};
							if (cmd === infix)
								return function (@f) {
									if (_left !== null)
										_left(prefix)(f);
									f(_value);
									if (_right !== null)
										_right(prefix)(f);
								};
							if (cmd === postfix)
								return function (@f) {
									if (_left !== null)
										_left(prefix)(f);
									if (_right !== null)
										_right(prefix)(f);
									f(_value);
								};
							if (cmd === reversePrefix)
								return function (@f) {
									f(_value);
									if (_right !== null)
										_right(reversePrefix)(f);
									if (_left !== null)
										_left(reversePrefix)(f);
								};
							if (cmd === reverseInfix)
								return function (@f) {
									if (_right !== null)
										_right(reverseInfix)(f);
									f(_value);
									if (_left !== null)
										_left(reverseInfix)(f);
								};
							if (cmd === reversePostfix)
								return function (@f) {
									if (_right !== null)
										_right(reversePostfix)(f);
									if (_left !== null)
										_left(reversePostfix)(f);
									f(_value);
								};
							if (cmd === contains)
								return @function (@val) {
									return @(_value === val || _left(contains)(val) || _right(contains)(val));
								};
							if (cmd === getValueOf)
								return @function (@curIndex, @output) {
									if (!curIndex) { // curIndex = 0
										output = _value;
										return @true;
									} else {
										curIndex--;
										return @(_left(getValueOf)(curIndex, output) ||_right(getValueOf)(curIndex, output));
									}
								};
						};
					})();
				};
		};

		return @function (@cmd) {
			if (cmd === insert)
				return @function (@value) {
					_count++;
					if (_root === null)
						_root = Three(new)(value);
					else {
						_root(insert)(value);
					}
				};
			if (cmd === removeIndex)
				return @function (@index) {
					// _count--;
				};
			if (cmd === removeFirst)
				return @function (@index) {
					// _count--;
				};
			if (cmd === contains)
				return @function (@value) {
					if (_root === null)
						return @false;
					return _root(contains)(value);
				};
			if (cmd === prefix)
				return function (@f) {
					if (_root !== null)
						_root(prefix)(f);
				};
			if (cmd === infix)
				return function (@f) {
					if (_root !== null)
						_root(infix)(f);
				};
			if (cmd === postfix)
				return function (@f) {
					if (_root !== null)
						_root(postfix)(f);
				};
			if (cmd === getIndexOf)
				return @function (@value) {
				};
			if (cmd === getValueOf)
				return @function (@index) {
					if (_root !== null) {
						var output; _root(getValueOf)(index, output);
						return @output;
					}
				};
			if (cmd === count)
				return @_count;
			if (cmd === isEmpty)
				return @(_root === null);
			if (cmd === height)
				return;
			if (cmd === equalsTo)
				return @function (@_BST) {

				};
			if (cmd === reversePrefix)
				return function (@f) {
					if (_root !== null)
						_root(reversePrefix)(f);
				};
			if (cmd === reverseInfix)
				return function (@f) {
					if (_root !== null)
						_root(reverseInfix)(f);
				};
			if (cmd === reversePostfix)
				return function (@f) {
					if (_root !== null)
						_root(reversePostfix)(f);
				};
		};
	};

	var _instanceOf = @0;


	return @function (@cmd) {

		if (cmd === new)
			return @function (@OrderFunction) {
				_instanceOf++;
				return @_new(OrderFunction);
			};
		if (cmd === getInstance)
			return @_instanceOf;
	};
})();

global new 				= @'new';
global getInstance 		= @'getInstance';
global getValue 		= @'getValue';
global getRightBranch 	= @'getRightBranch';
global getLeftBranch	= @'getLeftBranch';
global setValue 		= @'getValue';
global setRightBranch	= @'getRightBranch';
global setLeftBranch 	= @'getLeftBranch';
global insert 			= @'insert';
global removeIndex 		= @'removeIndex';
global removeFirst 		= @'removeFirst';
global contains 		= @'contains';
global prefix 			= @'prefix';
global infix 			= @'infix';
global postfix 			= @'postfix';
global getIndexOf 		= @'getIndexOf';
global getValueOf 		= @'getValueOf';
global count 			= @'count';
global isEmpty 			= @'isEmpty';
global height 			= @'height';
global equalsTo 		= @'equalsTo';
global reversePrefix 	= @'reversePrefix';
global reverseInfix 	= @'reverseInfix';
global reversePostfix 	= @'reversePostfix';