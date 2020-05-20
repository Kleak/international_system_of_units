/// num is in seconds
extension ISTime on num {
  /// convert seconds to nanoseconds
  num get toNanosecond => this * 1e+9;

  /// convert seconds to microseconds
  num get toMicrosecond => this * 1e+6;

  /// convert seconds to milliseconds
  num get toMillisecond => this * 1000;

  /// convert seconds to minutes
  num get toMinute => this * 0.0166667;

  /// convert seconds to hours
  num get toHour => this * 0.000277778;

  /// convert seconds to days
  num get toDay => this * 1.1574e-5;

  /// convert seconds to weeks
  num get toWeek => this * 1.6534e-6;

  /// convert secodns to months
  num get toMonth => this * 3.8052e-7;

  /// convert seconds to years
  num get toCalendarYear => this * 3.171e-8;

  /// convert seconds to decades
  num get toDecade => this * 3.171e-9;

  /// convert seconds to centuries
  num get toCentury => this * 3.171e-10;

  /// convert num from [unit] to seconds
  num toSecond(TimeUnit unit) {
    switch (unit) {
      case TimeUnit.nanosecond:
        return this / 1e+9;
      case TimeUnit.microsecond:
        return this / 1e+6;
      case TimeUnit.millisecond:
        return this / 1000;
      case TimeUnit.minute:
        return this * 60;
      case TimeUnit.hour:
        return this * 3600;
      case TimeUnit.day:
        return this * 86400;
      case TimeUnit.week:
        return this * 604800;
      case TimeUnit.month:
        return this * 2.628e+6;
      case TimeUnit.calendarYear:
        return this * 3.154e+7;
      case TimeUnit.decade:
        return this * 3.154e+8;
      case TimeUnit.century:
        return this * 3.154e+9;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISTime]
enum TimeUnit {
  nanosecond,
  microsecond,
  millisecond,
  second,
  minute,
  hour,
  day,
  week,
  month,
  calendarYear,
  decade,
  century,
}
