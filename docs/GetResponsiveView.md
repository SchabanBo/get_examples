# GetResponsiveView

Extend this widget to build responsive view.
this widget contains the `screen` property that have all
information about the screen size and type.

## How to use it

You have two options to build it.

- with `builder` method you return the widget to build.
- with methods `desktop`, `tablet`,`phone`, `watch`. the specific
method will be built when the screen type matches the method
when the screen is [ScreenType.Tablet] the `tablet` method
will be exuded and so on.
**Note:** If you use this method please set the property `alwaysUseBuilder` to `false`

With `settings` property you can set the width limit for the screen types.