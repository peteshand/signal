package petesignals;

import petesignals.Signal.BaseSignal;

class Signal1<T> extends BaseSignal<(T) -> Void>
{
    public var value:T;

	public function dispatch(value1:T)
	{
		sortPriority();
		this.value = value1;
		dispatchCallbacks();
		value = null;
	}

	override function dispatchCallback(callback:(T) -> Void)
	{
		callback(value);
	}
}