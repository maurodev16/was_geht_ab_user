class OpeningHours {
   String? day;
   String? open;
   String? close;

  OpeningHours({
     this.day,
     this.open,
     this.close,
  });

  factory OpeningHours.fromJson(Map<String, dynamic> json) {
    return OpeningHours(
      day: json['day'],
      open: json['open'],
      close: json['close'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'open': open,
      'close': close,
    };
  }
    @override
  String toString() {
    return 'day: $day, open: $open, close: $close';
  }
}
