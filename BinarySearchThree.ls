global BST = @(function () {
	var _new = @function (@OrderFunction) {
		var _root = @null;
		var _orderFunction = @OrderFunction;

		return @function (@cmd) {
			if (cmd === insert)
				return @function (@value) {

				};
			if (cmd === removeIndex)
				return @function (@index) {
					
				};
			if (cmd === removeFirst)
				return @function (@index) {
					
				};
			if (cmd === contains)
				return @function (@value) {

				};
			if (cmd === prefix)
				return;
			if (cmd === infix)
				return;
			if (cmd === suffix)
				return;
			if (cmd === getIndexOf)
				return @function (@index) {

				};
			if (cmd === getValueOf)
				return @function (@index) {

				};
			if (cmd === count)
				return;
			if (cmd === isEmpty)
				return;
			if (cmd === height)
				return;
			if (cmd === equalsTo)
				return @function (@BST) {

				};
			if (cmd === reversePrefix)
				return;
			if (cmd === reverseInfix)
				return;
			if (cmd === reverseSuffix)
				return;
		};
	};
	var _instanceOf = @0;

	var NODE = @function (@cmd) {
		if (cmd === new)
			return @function (@value) {
				return @(function () {
					var _value = @value;
					var _left = @null;
					var _right = @null;
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

					};
				})();
			};
	};

	return @function (@cmd) {

		if (cmd === new)
			return @function (@OrderFunction) {
				_instanceOf++;
				return @_new(OrderFunction);
			}
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
global suffix 			= @'suffix';
global getIndexOf 		= @'getIndexOf';
global getValueOf 		= @'getValueOf';
global count 			= @'count';
global isEmpty 			= @'isEmpty';
global height 			= @'height';
global equalsTo 		= @'equalsTo';
global reversePrefix 	= @'reversePrefix';
global reverseInfix 	= @'reverseInfix';
global reverseSuffix 	= @'reverseSuffix';