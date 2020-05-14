Easily convert unit from and to the international system of units and automatically get the localization for it.

# How it work

This package use extension on `num` to allow you to convert easily from one unit to another.

For example if you want to transform celsius to fahrenheit here is the code:
```dart
0.toKelvin(TemperatureUnit.celsius).toFahrenheit;
```

# Localization

We take care of the localization of the unit for you as an example on length this code will be localized:

```dart
isLocalizations.length.locale(12, UnitSystem.international); // 0.012 km
```

This is due to the fact that international system base unit for length is the kilometers.


## Features and bugs

Please file [feature requests](https://github.com/Kleak/international_system_of_units/issues/new?assignees=&labels=enhancement&template=new-conversion.md&title=) 
and [bugs](https://github.com/Kleak/international_system_of_units/issues/new?assignees=&labels=bug&template=bug_report.md&title=).