![Pub Version](https://img.shields.io/pub/v/international_system_of_units?color=%23215896)

Easily convert unit from and to the international system of units and automatically get the localization for it.

# How it work

### Conversions
This package use extension on `num` to allow you to convert easily from one unit to another.

For example if you want to transform celsius to fahrenheit here is the code:
```dart
0.toKelvin(TemperatureUnit.celsius).toFahrenheit;
```

### Localization

We take care of the localization of the unit for you as an example on length this code will be localized:

```dart
isLocalizations.length.locale(12, UnitSystem.international); // 0.012 km
```

This is due to the fact that international system base unit for length is the meters.


# What we support currently
### Converstions
#### Area
The base unit for area is square meter.

- [x] to/from square centimeters
- [x] to/from square kilometers
- [x] to/from square miles
- [x] to/from square yard
- [x] to/from square foot
- [x] to/from square inches
- [x] to/from hectare
- [x] to/from acre

#### Length
The base unit for length is meter.
- [x] to/from nanometers
- [x] to/from micrometers
- [x] to/from millimeters
- [x] to/from centimeters
- [x] to/from kilometers
- [x] to/from inch
- [x] to/from foot
- [x] to/from yard
- [x] to/from miles
- [x] to/from nautical miles

#### Length Per Time (speed)
The base unit for length per time is meters per seconds.
- [x] to/from knot
- [x] to/from kilometers per hours
- [x] to/from miles per hours

#### Length Per Volume 
The base unit for length per volume is meters per liters.
- [x] to/from kilometers per liters
- [x] to/from miles per us gallons
- [x] to/from miles per imperial gallons

#### Mass
The base unit for mass is kilograms.
- [x] to/from tons
- [x] to/from milligrams
- [x] to/from micrograms
- [x] to/from grams
- [x] to/from imperial ton
- [x] to/from us ton
- [x] to/from stone
- [x] to/from pound
- [x] to/from ounce

#### Mass Per Length
The base unit for mass per length is kilograms per meters.

- [x] to/from grams per meters
- [x] to/from grams per miles
- [x] to/from kilograms per kilometers
- [x] to/from grams per kilometers

#### Pressure
The base unit for pressure is pascal.
- [x] to/from pound force per square inch
- [x] to/from bar

#### Temperature
The base unit for temperature is kelvin.
- [x] to/from celsius
- [x] to/from fahrenheit
- [x] to/from rakine
- [x] to/from romer

#### Time
The base unit for time is seconds.
- [x] to/from nanoseconds
- [x] to/from microseconds
- [x] to/from milliseconds
- [x] to/from minutes
- [x] to/from hours
- [x] to/from days
- [x] to/from weeks
- [x] to/from months
- [x] to/from years
- [x] to/from decades
- [x] to/from centuries

#### Volume
The base unit for volume is liters.
- [x] to/from us liquid gallons
- [x] to/from us liquid quart
- [x] to/from us liquid pint
- [x] to/from us legal cup
- [x] to/from us fluid ounces
- [x] to/from us teaspoon
- [x] to/from us tablespoon
- [x] to/from millimeters
- [x] to/from imperial gallon
- [x] to/from imperial quart
- [x] to/from imperial pint
- [x] to/from imperial cup
- [x] to/from imperial fluid ounces
- [x] to/from imperial teaspoon
- [x] to/from imperial tablespoon
- [x] to/from cubic meters
- [x] to/from cubic foot
- [x] t0/from cubic inch

#### Volume Per Length
The base unit for volume per length is liters per meters.
- [x] to/from liters per kilometers
- [x] to/from us gallons per miles
- [x] to/from imperial gallons per miles
- [x] to/from liters per 100 kilometers

### Localizations
#### Fuel economy
This is a localization helper it use different conversion under the hood for convinience.

The base unit is liters per meters
- [x] liters per 100 kilometers
- [x] miles per us gallons
- [x] miles per imperial gallons

#### Length Per Time
The base unit is meters per seconds.

- [x] kilometers per hours
- [x] miles per hours
- [x] knot
- [x] meters per seconds

#### Length Per Volume
The base unit is meters per liters.

- [x] meters per liters
- [x] kilometers per liters
- [x] miles per imperial gallons
- [x] miles per us gallons


#### Length
The base unit is meters.

- [x] kilometers
- [x] meters
- [x] miles
- [x] inch

#### Mass Per Length
The base unit is kilograms per meters.

- [x] grams per meters
- [x] grams per miles 
- [x] kilograms per kilometers
- [x] grams per kilometers

#### Mass
The base unit is kilograms.

- [x] micrograms
- [x] milligrams
- [x] grams
- [x] kilograms
- [x] tonnes
- [x] imperial tons
- [x] us tons
- [x] ounces
- [x] stone
- [x] pounds


#### Pressure
The base unit is pascals.

- [x] pascals
- [x] bar
- [x] pound force per square inch

#### Temperature
The base unit is kelvin.

- [x] celsius
- [x] fahrenheit
- [x] kelvin
- [x] rankine
- [x] romer

#### Time
The base unit is seconds.

- [x] microseconds
- [x] milliseconds
- [x] seconds
- [x] minutes
- [x] hours
- [x] days
- [x] weeks
- [x] months
- [x] years
- [x] decades
- [x] centuries

#### Volume Per Length
The base unit is liters per meters

- [x] imperial gallons per miles
- [x] us gallons per miles
- [x] liters per meters
- [x] liters per kilometers
- [x] liters per 100 kilometers

#### Volume
The base unit is liters

- [x] cubic foot
- [x] cubic feet
- [x] cubic inch
- [x] us/imperial cup
- [x] us/imperial fluid ounce
- [x] us/imperial quart
- [x] us/imperial pint
- [x] us/imperial tablespoon
- [x] us/imperial teaspoon
- [x] us/imperial liquid gallons
- [x] milliliters
- [x] liters

# Features and bugs

For new conversion please fill [new conversion](https://github.com/Kleak/international_system_of_units/issues/new?assignees=&labels=enhancement&template=new-conversion.md&title=).

If you find a [bug](https://github.com/Kleak/international_system_of_units/issues/new?assignees=&labels=bug&template=bug_report.md&title=).

Or something else [here](https://github.com/Kleak/international_system_of_units/issues/new).

# Contributing

Please read our [contibuting guides](https://github.com/Kleak/international_system_of_units/blob/master/CONTRIBUTING.md).

# Support

If you like or use this package please consider sponsoring me [here](https://github.com/sponsors/Kleak).