/// num is in second
extension ISTime on num {
  num get toNanosecond => this * 1e+9;
  num get toMicrosecond => this * 1e+6;
  num get toMillisecond => this * 1000;
  num get toMinute => this * 0.0166667;
  num get toHour => this * 0.000277778;
  num get toDay => this * 1.1574e-5;
  num get toWeek => this * 1.6534e-6;
  num get toMonth => this * 3.8052e-7;
  num get toCalendarYear => this * 3.171e-8;
  num get toDecade => this * 3.171e-9;
  num get toCentury => this * 3.171e-10;

  //  convert the num to second base on its time unit
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
