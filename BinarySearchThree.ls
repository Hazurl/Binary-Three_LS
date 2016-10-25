global BST = @(function () {
	var _new = @function (@OrderFunction) {
		var _root = @null;
		var _orderFunction = @OrderFunction;
	};
	var _instanceOf = @0;

	var NODE = @function (@cmd) {
		if (cmd === new)
			return @function (@value) {
				return @(function () {
					var _value = @value;
					var _left = @null;
					var right = @null;
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

global new = 'new';
global getInstance = 'getInstance';