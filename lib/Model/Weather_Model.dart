// // class WeatherModel {
// //   Location? location;
// //   Current? current;

// //   WeatherModel({this.location, this.current});

// //   WeatherModel.fromJson(Map<String, dynamic> json) {
// //     location =
// //         json['location'] != null ? Location.fromJson(json['location']) : null;
// //     current =
// //         json['current'] != null ? Current.fromJson(json['current']) : null;
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     if (location != null) {
// //       data['location'] = location!.toJson();
// //     }
// //     if (current != null) {
// //       data['current'] = current!.toJson();
// //     }
// //     return data;
// //   }
// // }

// // class Location {
// //   String? name;
// //   String? region;
// //   String? country;
// //   double? lat;
// //   double? lon;
// //   String? tzId;
// //   int? localtimeEpoch;
// //   String? localtime;

// //   Location({
// //     this.name,
// //     this.region,
// //     this.country,
// //     this.lat,
// //     this.lon,
// //     this.tzId,
// //     this.localtimeEpoch,
// //     this.localtime,
// //   });

// //   Location.fromJson(Map<String, dynamic> json) {
// //     name = json['name'];
// //     region = json['region'];
// //     country = json['country'];
// //     lat = (json['lat'] as num?)?.toDouble();
// //     lon = (json['lon'] as num?)?.toDouble();
// //     tzId = json['tz_id'];
// //     localtimeEpoch = json['localtime_epoch'] as int?;
// //     localtime = json['localtime'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['name'] = name;
// //     data['region'] = region;
// //     data['country'] = country;
// //     data['lat'] = lat;
// //     data['lon'] = lon;
// //     data['tz_id'] = tzId;
// //     data['localtime_epoch'] = localtimeEpoch;
// //     data['localtime'] = localtime;
// //     return data;
// //   }
// // }

// // class Current {
// //   int? lastUpdatedEpoch;
// //   String? lastUpdated;
// //   double? tempC;
// //   double? tempF;
// //   int? isDay;
// //   Condition? condition;
// //   double? windMph;
// //   double? windKph;
// //   int? windDegree;
// //   String? windDir;
// //   double? pressureMb;
// //   double? pressureIn;
// //   double? precipMm;
// //   double? precipIn;
// //   int? humidity;
// //   int? cloud;
// //   double? feelslikeC;
// //   double? feelslikeF;
// //   double? windchillC;
// //   double? windchillF;
// //   double? heatindexC;
// //   double? heatindexF;
// //   double? dewpointC;
// //   double? dewpointF;
// //   double? visKm;
// //   double? visMiles;
// //   double? uv;
// //   double? gustMph;
// //   double? gustKph;

// //   Current({
// //     this.lastUpdatedEpoch,
// //     this.lastUpdated,
// //     this.tempC,
// //     this.tempF,
// //     this.isDay,
// //     this.condition,
// //     this.windMph,
// //     this.windKph,
// //     this.windDegree,
// //     this.windDir,
// //     this.pressureMb,
// //     this.pressureIn,
// //     this.precipMm,
// //     this.precipIn,
// //     this.humidity,
// //     this.cloud,
// //     this.feelslikeC,
// //     this.feelslikeF,
// //     this.windchillC,
// //     this.windchillF,
// //     this.heatindexC,
// //     this.heatindexF,
// //     this.dewpointC,
// //     this.dewpointF,
// //     this.visKm,
// //     this.visMiles,
// //     this.uv,
// //     this.gustMph,
// //     this.gustKph,
// //   });

// //   Current.fromJson(Map<String, dynamic> json) {
// //     lastUpdatedEpoch = json['last_updated_epoch'] as int?;
// //     lastUpdated = json['last_updated'];
// //     tempC = (json['temp_c'] as num?)?.toDouble();
// //     tempF = (json['temp_f'] as num?)?.toDouble();
// //     isDay = json['is_day'] as int?;
// //     condition = json['condition'] != null
// //         ? Condition.fromJson(json['condition'])
// //         : null;
// //     windMph = (json['wind_mph'] as num?)?.toDouble();
// //     windKph = (json['wind_kph'] as num?)?.toDouble();
// //     windDegree = json['wind_degree'] as int?;
// //     windDir = json['wind_dir'];
// //     pressureMb = (json['pressure_mb'] as num?)?.toDouble();
// //     pressureIn = (json['pressure_in'] as num?)?.toDouble();
// //     precipMm = (json['precip_mm'] as num?)?.toDouble();
// //     precipIn = (json['precip_in'] as num?)?.toDouble();
// //     humidity = json['humidity'] as int?;
// //     cloud = json['cloud'] as int?;
// //     feelslikeC = (json['feelslike_c'] as num?)?.toDouble();
// //     feelslikeF = (json['feelslike_f'] as num?)?.toDouble();
// //     windchillC = (json['windchill_c'] as num?)?.toDouble();
// //     windchillF = (json['windchill_f'] as num?)?.toDouble();
// //     heatindexC = (json['heatindex_c'] as num?)?.toDouble();
// //     heatindexF = (json['heatindex_f'] as num?)?.toDouble();
// //     dewpointC = (json['dewpoint_c'] as num?)?.toDouble();
// //     dewpointF = (json['dewpoint_f'] as num?)?.toDouble();
// //     visKm = (json['vis_km'] as num?)?.toDouble();
// //     visMiles = (json['vis_miles'] as num?)?.toDouble();
// //     uv = (json['uv'] as num?)?.toDouble();
// //     gustMph = (json['gust_mph'] as num?)?.toDouble();
// //     gustKph = (json['gust_kph'] as num?)?.toDouble();
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['last_updated_epoch'] = lastUpdatedEpoch;
// //     data['last_updated'] = lastUpdated;
// //     data['temp_c'] = tempC;
// //     data['temp_f'] = tempF;
// //     data['is_day'] = isDay;
// //     if (condition != null) {
// //       data['condition'] = condition!.toJson();
// //     }
// //     data['wind_mph'] = windMph;
// //     data['wind_kph'] = windKph;
// //     data['wind_degree'] = windDegree;
// //     data['wind_dir'] = windDir;
// //     data['pressure_mb'] = pressureMb;
// //     data['pressure_in'] = pressureIn;
// //     data['precip_mm'] = precipMm;
// //     data['precip_in'] = precipIn;
// //     data['humidity'] = humidity;
// //     data['cloud'] = cloud;
// //     data['feelslike_c'] = feelslikeC;
// //     data['feelslike_f'] = feelslikeF;
// //     data['windchill_c'] = windchillC;
// //     data['windchill_f'] = windchillF;
// //     data['heatindex_c'] = heatindexC;
// //     data['heatindex_f'] = heatindexF;
// //     data['dewpoint_c'] = dewpointC;
// //     data['dewpoint_f'] = dewpointF;
// //     data['vis_km'] = visKm;
// //     data['vis_miles'] = visMiles;
// //     data['uv'] = uv;
// //     data['gust_mph'] = gustMph;
// //     data['gust_kph'] = gustKph;
// //     return data;
// //   }
// // }

// // class Condition {
// //   String? text;
// //   String? icon;
// //   int? code;

// //   Condition({this.text, this.icon, this.code});

// //   Condition.fromJson(Map<String, dynamic> json) {
// //     text = json['text'];
// //     icon = json['icon'];
// //     code = json['code'] as int?;
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['text'] = text;
// //     data['icon'] = icon;
// //     data['code'] = code;
// //     return data;
// //   }
// // }
// class WeatherModel {
//   Location? location;
//   Current? current;
//   Forecast? forecast;

//   WeatherModel({this.location, this.current, this.forecast});

//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     location =
//         json['location'] != null ? Location.fromJson(json['location']) : null;
//     current =
//         json['current'] != null ? Current.fromJson(json['current']) : null;
//     forecast =
//         json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (location != null) {
//       data['location'] = location!.toJson();
//     }
//     if (current != null) {
//       data['current'] = current!.toJson();
//     }
//     if (forecast != null) {
//       data['forecast'] = forecast!.toJson();
//     }
//     return data;
//   }
// }

// class Location {
//   String? name;
//   String? region;
//   String? country;
//   double? lat;
//   double? lon;
//   String? tzId;
//   int? localtimeEpoch;
//   String? localtime;

//   Location({
//     this.name,
//     this.region,
//     this.country,
//     this.lat,
//     this.lon,
//     this.tzId,
//     this.localtimeEpoch,
//     this.localtime,
//   });

//   Location.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     region = json['region'];
//     country = json['country'];
//     lat = json['lat'];
//     lon = json['lon'];
//     tzId = json['tz_id'];
//     localtimeEpoch = json['localtime_epoch'];
//     localtime = json['localtime'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['region'] = region;
//     data['country'] = country;
//     data['lat'] = lat;
//     data['lon'] = lon;
//     data['tz_id'] = tzId;
//     data['localtime_epoch'] = localtimeEpoch;
//     data['localtime'] = localtime;
//     return data;
//   }
// }

// class Current {
//   int? lastUpdatedEpoch;
//   String? lastUpdated;
//   double? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   double? windMph;
//   double? windKph;
//   int? windDegree;
//   String? windDir;
//   int? pressureMb;
//   double? pressureIn;
//   double? precipMm;
//   double? precipIn;
//   int? humidity;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;
//   double? windchillC;
//   double? windchillF;
//   double? heatindexC;
//   double? heatindexF;
//   double? dewpointC;
//   double? dewpointF;
//   int? visKm;
//   int? visMiles;
//   int? uv;
//   double? gustMph;
//   double? gustKph;

//   Current({
//     this.lastUpdatedEpoch,
//     this.lastUpdated,
//     this.tempC,
//     this.tempF,
//     this.isDay,
//     this.condition,
//     this.windMph,
//     this.windKph,
//     this.windDegree,
//     this.windDir,
//     this.pressureMb,
//     this.pressureIn,
//     this.precipMm,
//     this.precipIn,
//     this.humidity,
//     this.cloud,
//     this.feelslikeC,
//     this.feelslikeF,
//     this.windchillC,
//     this.windchillF,
//     this.heatindexC,
//     this.heatindexF,
//     this.dewpointC,
//     this.dewpointF,
//     this.visKm,
//     this.visMiles,
//     this.uv,
//     this.gustMph,
//     this.gustKph,
//   });

//   Current.fromJson(Map<String, dynamic> json) {
//     lastUpdatedEpoch = json['last_updated_epoch'];
//     lastUpdated = json['last_updated'];
//     tempC = json['temp_c'];
//     tempF = json['temp_f'];
//     isDay = json['is_day'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     windMph = json['wind_mph'];
//     windKph = json['wind_kph'];
//     windDegree = json['wind_degree'];
//     windDir = json['wind_dir'];
//     pressureMb = json['pressure_mb'];
//     pressureIn = json['pressure_in'];
//     precipMm = json['precip_mm'];
//     precipIn = json['precip_in'];
//     humidity = json['humidity'];
//     cloud = json['cloud'];
//     feelslikeC = json['feelslike_c'];
//     feelslikeF = json['feelslike_f'];
//     windchillC = json['windchill_c'];
//     windchillF = json['windchill_f'];
//     heatindexC = json['heatindex_c'];
//     heatindexF = json['heatindex_f'];
//     dewpointC = json['dewpoint_c'];
//     dewpointF = json['dewpoint_f'];
//     visKm = json['vis_km'];
//     visMiles = json['vis_miles'];
//     uv = json['uv'];
//     gustMph = json['gust_mph'];
//     gustKph = json['gust_kph'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['last_updated_epoch'] = lastUpdatedEpoch;
//     data['last_updated'] = lastUpdated;
//     data['temp_c'] = tempC;
//     data['temp_f'] = tempF;
//     data['is_day'] = isDay;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['wind_mph'] = windMph;
//     data['wind_kph'] = windKph;
//     data['wind_degree'] = windDegree;
//     data['wind_dir'] = windDir;
//     data['pressure_mb'] = pressureMb;
//     data['pressure_in'] = pressureIn;
//     data['precip_mm'] = precipMm;
//     data['precip_in'] = precipIn;
//     data['humidity'] = humidity;
//     data['cloud'] = cloud;
//     data['feelslike_c'] = feelslikeC;
//     data['feelslike_f'] = feelslikeF;
//     data['windchill_c'] = windchillC;
//     data['windchill_f'] = windchillF;
//     data['heatindex_c'] = heatindexC;
//     data['heatindex_f'] = heatindexF;
//     data['dewpoint_c'] = dewpointC;
//     data['dewpoint_f'] = dewpointF;
//     data['vis_km'] = visKm;
//     data['vis_miles'] = visMiles;
//     data['uv'] = uv;
//     data['gust_mph'] = gustMph;
//     data['gust_kph'] = gustKph;
//     return data;
//   }
// }

// class Condition {
//   String? text;
//   String? icon;
//   int? code;

//   Condition({this.text, this.icon, this.code});

//   Condition.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     icon = json['icon'];
//     code = json['code'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     data['icon'] = icon;
//     data['code'] = code;
//     return data;
//   }
// }

// class Forecast {
//   List<ForecastDay>? forecastDay;

//   Forecast({this.forecastDay});

//   Forecast.fromJson(Map<String, dynamic> json) {
//     if (json['forecastday'] != null) {
//       forecastDay = <ForecastDay>[];
//       json['forecastday'].forEach((v) {
//         forecastDay!.add(ForecastDay.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (forecastDay != null) {
//       data['forecastday'] = forecastDay!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ForecastDay {
//   String? date;
//   int? dateEpoch;
//   Day? day;
//   Astro? astro;
//   List<Hour>? hour;

//   ForecastDay({this.date, this.dateEpoch, this.day, this.astro, this.hour});

//   ForecastDay.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     dateEpoch = json['date_epoch'];
//     day = json['day'] != null ? Day.fromJson(json['day']) : null;
//     astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
//     if (json['hour'] != null) {
//       hour = <Hour>[];
//       json['hour'].forEach((v) {
//         hour!.add(Hour.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['date'] = date;
//     data['date_epoch'] = dateEpoch;
//     if (day != null) {
//       data['day'] = day!.toJson();
//     }
//     if (astro != null) {
//       data['astro'] = astro!.toJson();
//     }
//     if (hour != null) {
//       data['hour'] = hour!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Day {
//   double? maxtempC;
//   double? maxtempF;
//   double? mintempC;
//   double? mintempF;
//   double? avgtempC;
//   double? avgtempF;
//   double? maxwindMph;
//   double? maxwindKph;
//   double? totalprecipMm;
//   double? totalprecipIn;
//   double? avgvisKm;
//   double? avgvisMiles;
//   double? avghumidity;
//   int? dailyWillItRain;
//   int? dailyChanceOfRain;
//   int? dailyWillItSnow;
//   int? dailyChanceOfSnow;
//   Condition? condition;
//   double? uv;

//   Day({
//     this.maxtempC,
//     this.maxtempF,
//     this.mintempC,
//     this.mintempF,
//     this.avgtempC,
//     this.avgtempF,
//     this.maxwindMph,
//     this.maxwindKph,
//     this.totalprecipMm,
//     this.totalprecipIn,
//     this.avgvisKm,
//     this.avgvisMiles,
//     this.avghumidity,
//     this.dailyWillItRain,
//     this.dailyChanceOfRain,
//     this.dailyWillItSnow,
//     this.dailyChanceOfSnow,
//     this.condition,
//     this.uv,
//   });

//   Day.fromJson(Map<String, dynamic> json) {
//     maxtempC = json['maxtemp_c'];
//     maxtempF = json['maxtemp_f'];
//     mintempC = json['mintemp_c'];
//     mintempF = json['mintemp_f'];
//     avgtempC = json['avgtemp_c'];
//     avgtempF = json['avgtemp_f'];
//     maxwindMph = json['maxwind_mph'];
//     maxwindKph = json['maxwind_kph'];
//     totalprecipMm = json['totalprecip_mm'];
//     totalprecipIn = json['totalprecip_in'];
//     avgvisKm = json['avgvis_km'];
//     avgvisMiles = json['avgvis_miles'];
//     avghumidity = json['avghumidity'];
//     dailyWillItRain = json['daily_will_it_rain'];
//     dailyChanceOfRain = json['daily_chance_of_rain'];
//     dailyWillItSnow = json['daily_will_it_snow'];
//     dailyChanceOfSnow = json['daily_chance_of_snow'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     uv = json['uv'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['maxtemp_c'] = maxtempC;
//     data['maxtemp_f'] = maxtempF;
//     data['mintemp_c'] = mintempC;
//     data['mintemp_f'] = mintempF;
//     data['avgtemp_c'] = avgtempC;
//     data['avgtemp_f'] = avgtempF;
//     data['maxwind_mph'] = maxwindMph;
//     data['maxwind_kph'] = maxwindKph;
//     data['totalprecip_mm'] = totalprecipMm;
//     data['totalprecip_in'] = totalprecipIn;
//     data['avgvis_km'] = avgvisKm;
//     data['avgvis_miles'] = avgvisMiles;
//     data['avghumidity'] = avghumidity;
//     data['daily_will_it_rain'] = dailyWillItRain;
//     data['daily_chance_of_rain'] = dailyChanceOfRain;
//     data['daily_will_it_snow'] = dailyWillItSnow;
//     data['daily_chance_of_snow'] = dailyChanceOfSnow;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['uv'] = uv;
//     return data;
//   }
// }

// class Astro {
//   String? sunrise;
//   String? sunset;
//   String? moonrise;
//   String? moonset;

//   Astro({this.sunrise, this.sunset, this.moonrise, this.moonset});

//   Astro.fromJson(Map<String, dynamic> json) {
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//     moonrise = json['moonrise'];
//     moonset = json['moonset'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['sunrise'] = sunrise;
//     data['sunset'] = sunset;
//     data['moonrise'] = moonrise;
//     data['moonset'] = moonset;
//     return data;
//   }
// }

// class Hour {
//   int? timeEpoch;
//   String? time;
//   double? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   double? windMph;
//   double? windKph;
//   int? windDegree;
//   String? windDir;
//   int? pressureMb;
//   double? pressureIn;
//   double? precipMm;
//   double? precipIn;
//   int? humidity;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;
//   double? windchillC;
//   double? windchillF;
//   double? heatindexC;
//   double? heatindexF;
//   double? dewpointC;
//   double? dewpointF;
//   int? willItRain;
//   int? chanceOfRain;
//   int? willItSnow;
//   int? chanceOfSnow;
//   double? visKm;
//   double? visMiles;
//   double? gustMph;
//   double? gustKph;
//   int? uv;

//   Hour({
//     this.timeEpoch,
//     this.time,
//     this.tempC,
//     this.tempF,
//     this.isDay,
//     this.condition,
//     this.windMph,
//     this.windKph,
//     this.windDegree,
//     this.windDir,
//     this.pressureMb,
//     this.pressureIn,
//     this.precipMm,
//     this.precipIn,
//     this.humidity,
//     this.cloud,
//     this.feelslikeC,
//     this.feelslikeF,
//     this.windchillC,
//     this.windchillF,
//     this.heatindexC,
//     this.heatindexF,
//     this.dewpointC,
//     this.dewpointF,
//     this.willItRain,
//     this.chanceOfRain,
//     this.willItSnow,
//     this.chanceOfSnow,
//     this.visKm,
//     this.visMiles,
//     this.gustMph,
//     this.gustKph,
//     this.uv,
//   });

//   Hour.fromJson(Map<String, dynamic> json) {
//     timeEpoch = json['time_epoch'];
//     time = json['time'];
//     tempC = json['temp_c'];
//     tempF = json['temp_f'];
//     isDay = json['is_day'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     windMph = json['wind_mph'];
//     windKph = json['wind_kph'];
//     windDegree = json['wind_degree'];
//     windDir = json['wind_dir'];
//     pressureMb = json['pressure_mb'];
//     pressureIn = json['pressure_in'];
//     precipMm = json['precip_mm'];
//     precipIn = json['precip_in'];
//     humidity = json['humidity'];
//     cloud = json['cloud'];
//     feelslikeC = json['feelslike_c'];
//     feelslikeF = json['feelslike_f'];
//     windchillC = json['windchill_c'];
//     windchillF = json['windchill_f'];
//     heatindexC = json['heatindex_c'];
//     heatindexF = json['heatindex_f'];
//     dewpointC = json['dewpoint_c'];
//     dewpointF = json['dewpoint_f'];
//     willItRain = json['will_it_rain'];
//     chanceOfRain = json['chance_of_rain'];
//     willItSnow = json['will_it_snow'];
//     chanceOfSnow = json['chance_of_snow'];
//     visKm = json['vis_km'];
//     visMiles = json['vis_miles'];
//     gustMph = json['gust_mph'];
//     gustKph = json['gust_kph'];
//     uv = json['uv'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['time_epoch'] = timeEpoch;
//     data['time'] = time;
//     data['temp_c'] = tempC;
//     data['temp_f'] = tempF;
//     data['is_day'] = isDay;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['wind_mph'] = windMph;
//     data['wind_kph'] = windKph;
//     data['wind_degree'] = windDegree;
//     data['wind_dir'] = windDir;
//     data['pressure_mb'] = pressureMb;
//     data['pressure_in'] = pressureIn;
//     data['precip_mm'] = precipMm;
//     data['precip_in'] = precipIn;
//     data['humidity'] = humidity;
//     data['cloud'] = cloud;
//     data['feelslike_c'] = feelslikeC;
//     data['feelslike_f'] = feelslikeF;
//     data['windchill_c'] = windchillC;
//     data['windchill_f'] = windchillF;
//     data['heatindex_c'] = heatindexC;
//     data['heatindex_f'] = heatindexF;
//     data['dewpoint_c'] = dewpointC;
//     data['dewpoint_f'] = dewpointF;
//     data['will_it_rain'] = willItRain;
//     data['chance_of_rain'] = chanceOfRain;
//     data['will_it_snow'] = willItSnow;
//     data['chance_of_snow'] = chanceOfSnow;
//     data['vis_km'] = visKm;
//     data['vis_miles'] = visMiles;
//     data['gust_mph'] = gustMph;
//     data['gust_kph'] = gustKph;
//     data['uv'] = uv;
//     return data;
//   }
// }

// class Condition2 {
//   String? text;
//   String? icon;
//   int? code;

//   Condition2({this.text, this.icon, this.code});

//   Condition2.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     icon = json['icon'];
//     code = json['code'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     data['icon'] = icon;
//     data['code'] = code;
//     return data;
//   }
// }
// class WeatherModel {
//   Location? location;
//   Current? current;
//   Forecast? forecast;

//   WeatherModel({this.location, this.current, this.forecast});

//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     location =
//         json['location'] != null ? Location.fromJson(json['location']) : null;
//     current =
//         json['current'] != null ? Current.fromJson(json['current']) : null;
//     forecast =
//         json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (location != null) {
//       data['location'] = location!.toJson();
//     }
//     if (current != null) {
//       data['current'] = current!.toJson();
//     }
//     if (forecast != null) {
//       data['forecast'] = forecast!.toJson();
//     }
//     return data;
//   }
// }

// class Location {
//   String? name;
//   String? region;
//   String? country;
//   double? lat;
//   double? lon;
//   String? tzId;
//   int? localtimeEpoch;
//   String? localtime;

//   Location({
//     this.name,
//     this.region,
//     this.country,
//     this.lat,
//     this.lon,
//     this.tzId,
//     this.localtimeEpoch,
//     this.localtime,
//   });

//   Location.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     region = json['region'];
//     country = json['country'];
//     lat = json['lat'].toDouble();
//     lon = json['lon'].toDouble();
//     tzId = json['tz_id'];
//     localtimeEpoch = json['localtime_epoch'];
//     localtime = json['localtime'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['region'] = region;
//     data['country'] = country;
//     data['lat'] = lat;
//     data['lon'] = lon;
//     data['tz_id'] = tzId;
//     data['localtime_epoch'] = localtimeEpoch;
//     data['localtime'] = localtime;
//     return data;
//   }
// }

// class Current {
//   int? lastUpdatedEpoch;
//   String? lastUpdated;
//   double? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   double? windMph;
//   double? windKph;
//   int? windDegree;
//   String? windDir;
//   double? pressureMb;
//   double? pressureIn;
//   double? precipMm;
//   double? precipIn;
//   int? humidity;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;
//   double? windchillC;
//   double? windchillF;
//   double? heatindexC;
//   double? heatindexF;
//   double? dewpointC;
//   double? dewpointF;
//   double? visKm;
//   double? visMiles;
//   double? uv;
//   double? gustMph;
//   double? gustKph;

//   Current({
//     this.lastUpdatedEpoch,
//     this.lastUpdated,
//     this.tempC,
//     this.tempF,
//     this.isDay,
//     this.condition,
//     this.windMph,
//     this.windKph,
//     this.windDegree,
//     this.windDir,
//     this.pressureMb,
//     this.pressureIn,
//     this.precipMm,
//     this.precipIn,
//     this.humidity,
//     this.cloud,
//     this.feelslikeC,
//     this.feelslikeF,
//     this.windchillC,
//     this.windchillF,
//     this.heatindexC,
//     this.heatindexF,
//     this.dewpointC,
//     this.dewpointF,
//     this.visKm,
//     this.visMiles,
//     this.uv,
//     this.gustMph,
//     this.gustKph,
//   });

//   Current.fromJson(Map<String, dynamic> json) {
//     lastUpdatedEpoch = json['last_updated_epoch'];
//     lastUpdated = json['last_updated'];
//     tempC = json['temp_c'].toDouble();
//     tempF = json['temp_f'].toDouble();
//     isDay = json['is_day'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     windMph = json['wind_mph'].toDouble();
//     windKph = json['wind_kph'].toDouble();
//     windDegree = json['wind_degree'];
//     windDir = json['wind_dir'];
//     pressureMb = json['pressure_mb'].toDouble();
//     pressureIn = json['pressure_in'].toDouble();
//     precipMm = json['precip_mm'].toDouble();
//     precipIn = json['precip_in'].toDouble();
//     humidity = json['humidity'];
//     cloud = json['cloud'];
//     feelslikeC = json['feelslike_c'].toDouble();
//     feelslikeF = json['feelslike_f'].toDouble();
//     windchillC = json['windchill_c'].toDouble();
//     windchillF = json['windchill_f'].toDouble();
//     heatindexC = json['heatindex_c'].toDouble();
//     heatindexF = json['heatindex_f'].toDouble();
//     dewpointC = json['dewpoint_c'].toDouble();
//     dewpointF = json['dewpoint_f'].toDouble();
//     visKm = json['vis_km'].toDouble();
//     visMiles = json['vis_miles'].toDouble();
//     uv = json['uv'].toDouble();
//     gustMph = json['gust_mph'].toDouble();
//     gustKph = json['gust_kph'].toDouble();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['last_updated_epoch'] = lastUpdatedEpoch;
//     data['last_updated'] = lastUpdated;
//     data['temp_c'] = tempC;
//     data['temp_f'] = tempF;
//     data['is_day'] = isDay;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['wind_mph'] = windMph;
//     data['wind_kph'] = windKph;
//     data['wind_degree'] = windDegree;
//     data['wind_dir'] = windDir;
//     data['pressure_mb'] = pressureMb;
//     data['pressure_in'] = pressureIn;
//     data['precip_mm'] = precipMm;
//     data['precip_in'] = precipIn;
//     data['humidity'] = humidity;
//     data['cloud'] = cloud;
//     data['feelslike_c'] = feelslikeC;
//     data['feelslike_f'] = feelslikeF;
//     data['windchill_c'] = windchillC;
//     data['windchill_f'] = windchillF;
//     data['heatindex_c'] = heatindexC;
//     data['heatindex_f'] = heatindexF;
//     data['dewpoint_c'] = dewpointC;
//     data['dewpoint_f'] = dewpointF;
//     data['vis_km'] = visKm;
//     data['vis_miles'] = visMiles;
//     data['uv'] = uv;
//     data['gust_mph'] = gustMph;
//     data['gust_kph'] = gustKph;
//     return data;
//   }
// }

// class Condition {
//   String? text;
//   String? icon;
//   int? code;

//   Condition({this.text, this.icon, this.code});

//   Condition.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     icon = json['icon'];
//     code = json['code'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     data['icon'] = icon;
//     data['code'] = code;
//     return data;
//   }
// }

// class Forecast {
//   List<ForecastDay>? forecastDay;

//   Forecast({this.forecastDay});

//   Forecast.fromJson(Map<String, dynamic> json) {
//     if (json['forecastday'] != null) {
//       forecastDay = <ForecastDay>[];
//       json['forecastday'].forEach((v) {
//         forecastDay!.add(ForecastDay.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (forecastDay != null) {
//       data['forecastday'] = forecastDay!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ForecastDay {
//   String? date;
//   int? dateEpoch;
//   Day? day;
//   Astro? astro;
//   List<Hour>? hour;

//   ForecastDay({this.date, this.dateEpoch, this.day, this.astro, this.hour});

//   ForecastDay.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     dateEpoch = json['date_epoch'];
//     day = json['day'] != null ? Day.fromJson(json['day']) : null;
//     astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
//     if (json['hour'] != null) {
//       hour = <Hour>[];
//       json['hour'].forEach((v) {
//         hour!.add(Hour.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['date'] = date;
//     data['date_epoch'] = dateEpoch;
//     if (day != null) {
//       data['day'] = day!.toJson();
//     }
//     if (astro != null) {
//       data['astro'] = astro!.toJson();
//     }
//     if (hour != null) {
//       data['hour'] = hour!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Day {
//   double? maxtempC;
//   double? maxtempF;
//   double? mintempC;
//   double? mintempF;
//   double? avgtempC;
//   double? avgtempF;
//   double? maxwindMph;
//   double? maxwindKph;
//   double? totalprecipMm;
//   double? totalprecipIn;
//   double? totalsnowCm;
//   double? avgvisKm;
//   double? avgvisMiles;
//   double? avghumidity;
//   int? dailyWillItRain;
//   int? dailyChanceOfRain;
//   int? dailyWillItSnow;
//   int? dailyChanceOfSnow;
//   Condition? condition;
//   double? uv;

//   Day({
//     this.maxtempC,
//     this.maxtempF,
//     this.mintempC,
//     this.mintempF,
//     this.avgtempC,
//     this.avgtempF,
//     this.maxwindMph,
//     this.maxwindKph,
//     this.totalprecipMm,
//     this.totalprecipIn,
//     this.totalsnowCm,
//     this.avgvisKm,
//     this.avgvisMiles,
//     this.avghumidity,
//     this.dailyWillItRain,
//     this.dailyChanceOfRain,
//     this.dailyWillItSnow,
//     this.dailyChanceOfSnow,
//     this.condition,
//     this.uv,
//   });

//   Day.fromJson(Map<String, dynamic> json) {
//     maxtempC = json['maxtemp_c'].toDouble();
//     maxtempF = json['maxtemp_f'].toDouble();
//     mintempC = json['mintemp_c'].toDouble();
//     mintempF = json['mintemp_f'].toDouble();
//     avgtempC = json['avgtemp_c'].toDouble();
//     avgtempF = json['avgtemp_f'].toDouble();
//     maxwindMph = json['maxwind_mph'].toDouble();
//     maxwindKph = json['maxwind_kph'].toDouble();
//     totalprecipMm = json['totalprecip_mm'].toDouble();
//     totalprecipIn = json['totalprecip_in'].toDouble();
//     totalsnowCm = json['totalsnow_cm'].toDouble();
//     avgvisKm = json['avgvis_km'].toDouble();
//     avgvisMiles = json['avgvis_miles'].toDouble();
//     avghumidity = json['avghumidity'].toDouble();
//     dailyWillItRain = json['daily_will_it_rain'];
//     dailyChanceOfRain = json['daily_chance_of_rain'];
//     dailyWillItSnow = json['daily_will_it_snow'];
//     dailyChanceOfSnow = json['daily_chance_of_snow'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     uv = json['uv'].toDouble();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['maxtemp_c'] = maxtempC;
//     data['maxtemp_f'] = maxtempF;
//     data['mintemp_c'] = mintempC;
//     data['mintemp_f'] = mintempF;
//     data['avgtemp_c'] = avgtempC;
//     data['avgtemp_f'] = avgtempF;
//     data['maxwind_mph'] = maxwindMph;
//     data['maxwind_kph'] = maxwindKph;
//     data['totalprecip_mm'] = totalprecipMm;
//     data['totalprecip_in'] = totalprecipIn;
//     data['totalsnow_cm'] = totalsnowCm;
//     data['avgvis_km'] = avgvisKm;
//     data['avgvis_miles'] = avgvisMiles;
//     data['avghumidity'] = avghumidity;
//     data['daily_will_it_rain'] = dailyWillItRain;
//     data['daily_chance_of_rain'] = dailyChanceOfRain;
//     data['daily_will_it_snow'] = dailyWillItSnow;
//     data['daily_chance_of_snow'] = dailyChanceOfSnow;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['uv'] = uv;
//     return data;
//   }
// }

// class Astro {
//   String? sunrise;
//   String? sunset;
//   String? moonrise;
//   String? moonset;
//   String? moonPhase;
//   String? moonIllumination;
//   int? isMoonUp;
//   int? isSunUp;

//   Astro({
//     this.sunrise,
//     this.sunset,
//     this.moonrise,
//     this.moonset,
//     this.moonPhase,
//     this.moonIllumination,
//     this.isMoonUp,
//     this.isSunUp,
//   });

//   Astro.fromJson(Map<String, dynamic> json) {
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//     moonrise = json['moonrise'];
//     moonset = json['moonset'];
//     moonPhase = json['moon_phase'];
//     moonIllumination = json['moon_illumination'];
//     isMoonUp = json['is_moon_up'];
//     isSunUp = json['is_sun_up'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['sunrise'] = sunrise;
//     data['sunset'] = sunset;
//     data['moonrise'] = moonrise;
//     data['moonset'] = moonset;
//     data['moon_phase'] = moonPhase;
//     data['moon_illumination'] = moonIllumination;
//     data['is_moon_up'] = isMoonUp;
//     data['is_sun_up'] = isSunUp;
//     return data;
//   }
// }

// class Hour {
//   int? timeEpoch;
//   String? time;
//   double? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   double? windMph;
//   double? windKph;
//   int? windDegree;
//   String? windDir;
//   double? pressureMb;
//   double? pressureIn;
//   double? precipMm;
//   double? precipIn;
//   int? humidity;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;
//   double? windchillC;
//   double? windchillF;
//   double? heatindexC;
//   double? heatindexF;
//   double? dewpointC;
//   double? dewpointF;
//   int? willItRain;
//   int? chanceOfRain;
//   int? willItSnow;
//   int? chanceOfSnow;
//   double? visKm;
//   double? visMiles;
//   double? gustMph;
//   double? gustKph;
//   double? uv;

//   Hour({
//     this.timeEpoch,
//     this.time,
//     this.tempC,
//     this.tempF,
//     this.isDay,
//     this.condition,
//     this.windMph,
//     this.windKph,
//     this.windDegree,
//     this.windDir,
//     this.pressureMb,
//     this.pressureIn,
//     this.precipMm,
//     this.precipIn,
//     this.humidity,
//     this.cloud,
//     this.feelslikeC,
//     this.feelslikeF,
//     this.windchillC,
//     this.windchillF,
//     this.heatindexC,
//     this.heatindexF,
//     this.dewpointC,
//     this.dewpointF,
//     this.willItRain,
//     this.chanceOfRain,
//     this.willItSnow,
//     this.chanceOfSnow,
//     this.visKm,
//     this.visMiles,
//     this.gustMph,
//     this.gustKph,
//     this.uv,
//   });

//   Hour.fromJson(Map<String, dynamic> json) {
//     timeEpoch = json['time_epoch'];
//     time = json['time'];
//     tempC = json['temp_c'].toDouble();
//     tempF = json['temp_f'].toDouble();
//     isDay = json['is_day'];
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     windMph = json['wind_mph'].toDouble();
//     windKph = json['wind_kph'].toDouble();
//     windDegree = json['wind_degree'];
//     windDir = json['wind_dir'];
//     pressureMb = json['pressure_mb'].toDouble();
//     pressureIn = json['pressure_in'].toDouble();
//     precipMm = json['precip_mm'].toDouble();
//     precipIn = json['precip_in'].toDouble();
//     humidity = json['humidity'];
//     cloud = json['cloud'];
//     feelslikeC = json['feelslike_c'].toDouble();
//     feelslikeF = json['feelslike_f'].toDouble();
//     windchillC = json['windchill_c'].toDouble();
//     windchillF = json['windchill_f'].toDouble();
//     heatindexC = json['heatindex_c']?.toDouble();
//     heatindexF = json['heatindex_f']?.toDouble();
//     dewpointC = json['dewpoint_c']?.toDouble();
//     dewpointF = json['dewpoint_f']?.toDouble();
//     willItRain = json['will_it_rain'];
//     chanceOfRain = json['chance_of_rain'];
//     willItSnow = json['will_it_snow'];
//     chanceOfSnow = json['chance_of_snow'];
//     visKm = json['vis_km']?.toDouble();
//     visMiles = json['vis_miles']?.toDouble();
//     gustMph = json['gust_mph']?.toDouble();
//     gustKph = json['gust_kph']?.toDouble();
//     uv = json['uv']?.toDouble();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['time_epoch'] = timeEpoch;
//     data['time'] = time;
//     data['temp_c'] = tempC;
//     data['temp_f'] = tempF;
//     data['is_day'] = isDay;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['wind_mph'] = windMph;
//     data['wind_kph'] = windKph;
//     data['wind_degree'] = windDegree;
//     data['wind_dir'] = windDir;
//     data['pressure_mb'] = pressureMb;
//     data['pressure_in'] = pressureIn;
//     data['precip_mm'] = precipMm;
//     data['precip_in'] = precipIn;
//     data['humidity'] = humidity;
//     data['cloud'] = cloud;
//     data['feelslike_c'] = feelslikeC;
//     data['feelslike_f'] = feelslikeF;
//     data['windchill_c'] = windchillC;
//     data['windchill_f'] = windchillF;
//     data['heatindex_c'] = heatindexC;
//     data['heatindex_f'] = heatindexF;
//     data['dewpoint_c'] = dewpointC;
//     data['dewpoint_f'] = dewpointF;
//     data['will_it_rain'] = willItRain;
//     data['chance_of_rain'] = chanceOfRain;
//     data['will_it_snow'] = willItSnow;
//     data['chance_of_snow'] = chanceOfSnow;
//     data['vis_km'] = visKm;
//     data['vis_miles'] = visMiles;
//     data['gust_mph'] = gustMph;
//     data['gust_kph'] = gustKph;
//     data['uv'] = uv;
//     return data;
//   }
// }
// class WeatherModel {
//   Location? location;
//   Current? current;
//   Forecast? forecast;

//   WeatherModel({this.location, this.current, this.forecast});

//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     location =
//         json['location'] != null ? Location.fromJson(json['location']) : null;
//     current =
//         json['current'] != null ? Current.fromJson(json['current']) : null;
//     forecast =
//         json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (location != null) {
//       data['location'] = location!.toJson();
//     }
//     if (current != null) {
//       data['current'] = current!.toJson();
//     }
//     if (forecast != null) {
//       data['forecast'] = forecast!.toJson();
//     }
//     return data;
//   }
// }

// class Location {
//   String? name;
//   String? region;
//   String? country;
//   double? lat;
//   double? lon;
//   String? tzId;
//   int? localtimeEpoch;
//   String? localtime;

//   Location({
//     this.name,
//     this.region,
//     this.country,
//     this.lat,
//     this.lon,
//     this.tzId,
//     this.localtimeEpoch,
//     this.localtime,
//   });

//   Location.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     region = json['region'];
//     country = json['country'];
//     lat = (json['lat'] is int)
//         ? (json['lat'] as int).toDouble()
//         : json['lat']?.toDouble();
//     lon = (json['lon'] is int)
//         ? (json['lon'] as int).toDouble()
//         : json['lon']?.toDouble();
//     tzId = json['tz_id'];
//     localtimeEpoch = json['localtime_epoch'] is int
//         ? json['localtime_epoch'] as int
//         : int.tryParse(json['localtime_epoch']?.toString() ?? '');
//     localtime = json['localtime'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['region'] = region;
//     data['country'] = country;
//     data['lat'] = lat;
//     data['lon'] = lon;
//     data['tz_id'] = tzId;
//     data['localtime_epoch'] = localtimeEpoch;
//     data['localtime'] = localtime;
//     return data;
//   }
// }

// class Current {
//   int? lastUpdatedEpoch;
//   String? lastUpdated;
//   double? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   double? windMph;
//   double? windKph;
//   int? windDegree;
//   String? windDir;
//   double? pressureMb;
//   double? pressureIn;
//   double? precipMm;
//   double? precipIn;
//   int? humidity;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;
//   double? windchillC;
//   double? windchillF;
//   double? heatindexC;
//   double? heatindexF;
//   double? dewpointC;
//   double? dewpointF;
//   double? visKm;
//   double? visMiles;
//   double? uv;
//   double? gustMph;
//   double? gustKph;

//   Current({
//     this.lastUpdatedEpoch,
//     this.lastUpdated,
//     this.tempC,
//     this.tempF,
//     this.isDay,
//     this.condition,
//     this.windMph,
//     this.windKph,
//     this.windDegree,
//     this.windDir,
//     this.pressureMb,
//     this.pressureIn,
//     this.precipMm,
//     this.precipIn,
//     this.humidity,
//     this.cloud,
//     this.feelslikeC,
//     this.feelslikeF,
//     this.windchillC,
//     this.windchillF,
//     this.heatindexC,
//     this.heatindexF,
//     this.dewpointC,
//     this.dewpointF,
//     this.visKm,
//     this.visMiles,
//     this.uv,
//     this.gustMph,
//     this.gustKph,
//   });

//   Current.fromJson(Map<String, dynamic> json) {
//     lastUpdatedEpoch = json['last_updated_epoch'] is int
//         ? json['last_updated_epoch'] as int
//         : int.tryParse(json['last_updated_epoch']?.toString() ?? '');
//     lastUpdated = json['last_updated'];
//     tempC = (json['temp_c'] is int)
//         ? (json['temp_c'] as int).toDouble()
//         : json['temp_c']?.toDouble();
//     tempF = (json['temp_f'] is int)
//         ? (json['temp_f'] as int).toDouble()
//         : json['temp_f']?.toDouble();
//     isDay = json['is_day'] is int
//         ? json['is_day'] as int
//         : int.tryParse(json['is_day']?.toString() ?? '');
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//     windMph = (json['wind_mph'] is int)
//         ? (json['wind_mph'] as int).toDouble()
//         : json['wind_mph']?.toDouble();
//     windKph = (json['wind_kph'] is int)
//         ? (json['wind_kph'] as int).toDouble()
//         : json['wind_kph']?.toDouble();
//     windDegree = json['wind_degree'] is int
//         ? json['wind_degree'] as int
//         : int.tryParse(json['wind_degree']?.toString() ?? '');
//     windDir = json['wind_dir'];
//     pressureMb = (json['pressure_mb'] is int)
//         ? (json['pressure_mb'] as int).toDouble()
//         : json['pressure_mb']?.toDouble();
//     pressureIn = (json['pressure_in'] is int)
//         ? (json['pressure_in'] as int).toDouble()
//         : json['pressure_in']?.toDouble();
//     precipMm = (json['precip_mm'] is int)
//         ? (json['precip_mm'] as int).toDouble()
//         : json['precip_mm']?.toDouble();
//     precipIn = (json['precip_in'] is int)
//         ? (json['precip_in'] as int).toDouble()
//         : json['precip_in']?.toDouble();
//     humidity = json['humidity'] is int
//         ? json['humidity'] as int
//         : int.tryParse(json['humidity']?.toString() ?? '');
//     cloud = json['cloud'] is int
//         ? json['cloud'] as int
//         : int.tryParse(json['cloud']?.toString() ?? '');
//     feelslikeC = (json['feelslike_c'] is int)
//         ? (json['feelslike_c'] as int).toDouble()
//         : json['feelslike_c']?.toDouble();
//     feelslikeF = (json['feelslike_f'] is int)
//         ? (json['feelslike_f'] as int).toDouble()
//         : json['feelslike_f']?.toDouble();
//     windchillC = (json['windchill_c'] is int)
//         ? (json['windchill_c'] as int).toDouble()
//         : json['windchill_c']?.toDouble();
//     windchillF = (json['windchill_f'] is int)
//         ? (json['windchill_f'] as int).toDouble()
//         : json['windchill_f']?.toDouble();
//     heatindexC = (json['heatindex_c'] is int)
//         ? (json['heatindex_c'] as int).toDouble()
//         : json['heatindex_c']?.toDouble();
//     heatindexF = (json['heatindex_f'] is int)
//         ? (json['heatindex_f'] as int).toDouble()
//         : json['heatindex_f']?.toDouble();
//     dewpointC = (json['dewpoint_c'] is int)
//         ? (json['dewpoint_c'] as int).toDouble()
//         : json['dewpoint_c']?.toDouble();
//     dewpointF = (json['dewpoint_f'] is int)
//         ? (json['dewpoint_f'] as int).toDouble()
//         : json['dewpoint_f']?.toDouble();
//     visKm = (json['vis_km'] is int)
//         ? (json['vis_km'] as int).toDouble()
//         : json['vis_km']?.toDouble();
//     visMiles = (json['vis_miles'] is int)
//         ? (json['vis_miles'] as int).toDouble()
//         : json['vis_miles']?.toDouble();
//     uv = (json['uv'] is int)
//         ? (json['uv'] as int).toDouble()
//         : json['uv']?.toDouble();
//     gustMph = (json['gust_mph'] is int)
//         ? (json['gust_mph'] as int).toDouble()
//         : json['gust_mph']?.toDouble();
//     gustKph = (json['gust_kph'] is int)
//         ? (json['gust_kph'] as int).toDouble()
//         : json['gust_kph']?.toDouble();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['last_updated_epoch'] = lastUpdatedEpoch;
//     data['last_updated'] = lastUpdated;
//     data['temp_c'] = tempC;
//     data['temp_f'] = tempF;
//     data['is_day'] = isDay;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     data['wind_mph'] = windMph;
//     data['wind_kph'] = windKph;
//     data['wind_degree'] = windDegree;
//     data['wind_dir'] = windDir;
//     data['pressure_mb'] = pressureMb;
//     data['pressure_in'] = pressureIn;
//     data['precip_mm'] = precipMm;
//     data['precip_in'] = precipIn;
//     data['humidity'] = humidity;
//     data['cloud'] = cloud;
//     data['feelslike_c'] = feelslikeC;
//     data['feelslike_f'] = feelslikeF;
//     data['windchill_c'] = windchillC;
//     data['windchill_f'] = windchillF;
//     data['heatindex_c'] = heatindexC;
//     data['heatindex_f'] = heatindexF;
//     data['dewpoint_c'] = dewpointC;
//     data['dewpoint_f'] = dewpointF;
//     data['vis_km'] = visKm;
//     data['vis_miles'] = visMiles;
//     data['uv'] = uv;
//     data['gust_mph'] = gustMph;
//     data['gust_kph'] = gustKph;
//     return data;
//   }
// }

// class Condition {
//   String? text;
//   String? icon;
//   int? code;

//   Condition({this.text, this.icon, this.code});

//   Condition.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     icon = json['icon'];
//     code = json['code'] is int
//         ? json['code'] as int
//         : int.tryParse(json['code']?.toString() ?? '');
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     data['icon'] = icon;
//     data['code'] = code;
//     return data;
//   }
// }

// class Forecast {
//   List<Forecastday>? forecastday;

//   Forecast({this.forecastday});

//   Forecast.fromJson(Map<String, dynamic> json) {
//     if (json['forecastday'] != null) {
//       forecastday = <Forecastday>[];
//       json['forecastday'].forEach((v) {
//         forecastday!.add(Forecastday.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (forecastday != null) {
//       data['forecastday'] = forecastday!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Forecastday {
//   Day? day;
//   String? date;
//   int? dateEpoch;

//   Forecastday({this.day, this.date, this.dateEpoch});

//   Forecastday.fromJson(Map<String, dynamic> json) {
//     day = json['day'] != null ? Day.fromJson(json['day']) : null;
//     date = json['date'];
//     dateEpoch = json['date_epoch'] is int
//         ? json['date_epoch'] as int
//         : int.tryParse(json['date_epoch']?.toString() ?? '');
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (day != null) {
//       data['day'] = day!.toJson();
//     }
//     data['date'] = date;
//     data['date_epoch'] = dateEpoch;
//     return data;
//   }
// }

// class Day {
//   double? maxtempC;
//   double? maxtempF;
//   double? mintempC;
//   double? mintempF;
//   double? avgtempC;
//   double? avgtempF;
//   double? maxwindMph;
//   double? maxwindKph;
//   double? totalprecipMm;
//   double? totalprecipIn;
//   int? totalsunlightHours;
//   int? uv;
//   Condition? condition;

//   Day({
//     this.maxtempC,
//     this.maxtempF,
//     this.mintempC,
//     this.mintempF,
//     this.avgtempC,
//     this.avgtempF,
//     this.maxwindMph,
//     this.maxwindKph,
//     this.totalprecipMm,
//     this.totalprecipIn,
//     this.totalsunlightHours,
//     this.uv,
//     this.condition,
//   });

//   Day.fromJson(Map<String, dynamic> json) {
//     maxtempC = (json['maxtemp_c'] is int)
//         ? (json['maxtemp_c'] as int).toDouble()
//         : json['maxtemp_c']?.toDouble();
//     maxtempF = (json['maxtemp_f'] is int)
//         ? (json['maxtemp_f'] as int).toDouble()
//         : json['maxtemp_f']?.toDouble();
//     mintempC = (json['mintemp_c'] is int)
//         ? (json['mintemp_c'] as int).toDouble()
//         : json['mintemp_c']?.toDouble();
//     mintempF = (json['mintemp_f'] is int)
//         ? (json['mintemp_f'] as int).toDouble()
//         : json['mintemp_f']?.toDouble();
//     avgtempC = (json['avgtemp_c'] is int)
//         ? (json['avgtemp_c'] as int).toDouble()
//         : json['avgtemp_c']?.toDouble();
//     avgtempF = (json['avgtemp_f'] is int)
//         ? (json['avgtemp_f'] as int).toDouble()
//         : json['avgtemp_f']?.toDouble();
//     maxwindMph = (json['maxwind_mph'] is int)
//         ? (json['maxwind_mph'] as int).toDouble()
//         : json['maxwind_mph']?.toDouble();
//     maxwindKph = (json['maxwind_kph'] is int)
//         ? (json['maxwind_kph'] as int).toDouble()
//         : json['maxwind_kph']?.toDouble();
//     totalprecipMm = (json['totalprecip_mm'] is int)
//         ? (json['totalprecip_mm'] as int).toDouble()
//         : json['totalprecip_mm']?.toDouble();
//     totalprecipIn = (json['totalprecip_in'] is int)
//         ? (json['totalprecip_in'] as int).toDouble()
//         : json['totalprecip_in']?.toDouble();
//     totalsunlightHours = json['totalsunlight_hours'] is int
//         ? json['totalsunlight_hours'] as int
//         : int.tryParse(json['totalsunlight_hours']?.toString() ?? '');
//     uv = json['uv'] is int
//         ? json['uv'] as int
//         : int.tryParse(json['uv']?.toString() ?? '');
//     condition = json['condition'] != null
//         ? Condition.fromJson(json['condition'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['maxtemp_c'] = maxtempC;
//     data['maxtemp_f'] = maxtempF;
//     data['mintemp_c'] = mintempC;
//     data['mintemp_f'] = mintempF;
//     data['avgtemp_c'] = avgtempC;
//     data['avgtemp_f'] = avgtempF;
//     data['maxwind_mph'] = maxwindMph;
//     data['maxwind_kph'] = maxwindKph;
//     data['totalprecip_mm'] = totalprecipMm;
//     data['totalprecip_in'] = totalprecipIn;
//     data['totalsunlight_hours'] = totalsunlightHours;
//     data['uv'] = uv;
//     if (condition != null) {
//       data['condition'] = condition!.toJson();
//     }
//     return data;
//   }
// }
class WeatherModel {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeatherModel({this.location, this.current, this.forecast});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    if (forecast != null) {
      data['forecast'] = forecast!.toJson();
    }
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = (json['lat'] is int)
        ? (json['lat'] as int).toDouble()
        : json['lat']?.toDouble();
    lon = (json['lon'] is int)
        ? (json['lon'] as int).toDouble()
        : json['lon']?.toDouble();
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'] is int
        ? json['localtime_epoch'] as int
        : int.tryParse(json['localtime_epoch']?.toString() ?? '');
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz_id'] = tzId;
    data['localtime_epoch'] = localtimeEpoch;
    data['localtime'] = localtime;
    return data;
  }
}

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'] is int
        ? json['last_updated_epoch'] as int
        : int.tryParse(json['last_updated_epoch']?.toString() ?? '');
    lastUpdated = json['last_updated'];
    tempC = (json['temp_c'] is int)
        ? (json['temp_c'] as int).toDouble()
        : json['temp_c']?.toDouble();
    tempF = (json['temp_f'] is int)
        ? (json['temp_f'] as int).toDouble()
        : json['temp_f']?.toDouble();
    isDay = json['is_day'] is int
        ? json['is_day'] as int
        : int.tryParse(json['is_day']?.toString() ?? '');
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = (json['wind_mph'] is int)
        ? (json['wind_mph'] as int).toDouble()
        : json['wind_mph']?.toDouble();
    windKph = (json['wind_kph'] is int)
        ? (json['wind_kph'] as int).toDouble()
        : json['wind_kph']?.toDouble();
    windDegree = json['wind_degree'] is int
        ? json['wind_degree'] as int
        : int.tryParse(json['wind_degree']?.toString() ?? '');
    windDir = json['wind_dir'];
    pressureMb = (json['pressure_mb'] is int)
        ? (json['pressure_mb'] as int).toDouble()
        : json['pressure_mb']?.toDouble();
    pressureIn = (json['pressure_in'] is int)
        ? (json['pressure_in'] as int).toDouble()
        : json['pressure_in']?.toDouble();
    precipMm = (json['precip_mm'] is int)
        ? (json['precip_mm'] as int).toDouble()
        : json['precip_mm']?.toDouble();
    precipIn = (json['precip_in'] is int)
        ? (json['precip_in'] as int).toDouble()
        : json['precip_in']?.toDouble();
    humidity = json['humidity'] is int
        ? json['humidity'] as int
        : int.tryParse(json['humidity']?.toString() ?? '');
    cloud = json['cloud'] is int
        ? json['cloud'] as int
        : int.tryParse(json['cloud']?.toString() ?? '');
    feelslikeC = (json['feelslike_c'] is int)
        ? (json['feelslike_c'] as int).toDouble()
        : json['feelslike_c']?.toDouble();
    feelslikeF = (json['feelslike_f'] is int)
        ? (json['feelslike_f'] as int).toDouble()
        : json['feelslike_f']?.toDouble();
    windchillC = (json['windchill_c'] is int)
        ? (json['windchill_c'] as int).toDouble()
        : json['windchill_c']?.toDouble();
    windchillF = (json['windchill_f'] is int)
        ? (json['windchill_f'] as int).toDouble()
        : json['windchill_f']?.toDouble();
    heatindexC = (json['heatindex_c'] is int)
        ? (json['heatindex_c'] as int).toDouble()
        : json['heatindex_c']?.toDouble();
    heatindexF = (json['heatindex_f'] is int)
        ? (json['heatindex_f'] as int).toDouble()
        : json['heatindex_f']?.toDouble();
    dewpointC = (json['dewpoint_c'] is int)
        ? (json['dewpoint_c'] as int).toDouble()
        : json['dewpoint_c']?.toDouble();
    dewpointF = (json['dewpoint_f'] is int)
        ? (json['dewpoint_f'] as int).toDouble()
        : json['dewpoint_f']?.toDouble();
    visKm = (json['vis_km'] is int)
        ? (json['vis_km'] as int).toDouble()
        : json['vis_km']?.toDouble();
    visMiles = (json['vis_miles'] is int)
        ? (json['vis_miles'] as int).toDouble()
        : json['vis_miles']?.toDouble();
    uv = (json['uv'] is int)
        ? (json['uv'] as int).toDouble()
        : json['uv']?.toDouble();
    gustMph = (json['gust_mph'] is int)
        ? (json['gust_mph'] as int).toDouble()
        : json['gust_mph']?.toDouble();
    gustKph = (json['gust_kph'] is int)
        ? (json['gust_kph'] as int).toDouble()
        : json['gust_kph']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    return data;
  }
}

class Forecast {
  List<Forecastday>? forecastday;

  Forecast({this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(Forecastday.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (forecastday != null) {
      data['forecastday'] = forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Forecastday {
  Day? day;
  String? date;
  int? dateEpoch;
  Astro? astro;
  List<Hour>? hour; // Added this if hourly data is included

  Forecastday({this.day, this.date, this.dateEpoch, this.hour, this.astro});

  Forecastday.fromJson(Map<String, dynamic> json) {
    day = json['day'] != null ? Day.fromJson(json['day']) : null;
    astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;

    date = json['date'];
    dateEpoch = json['date_epoch'] is int
        ? json['date_epoch'] as int
        : int.tryParse(json['date_epoch']?.toString() ?? '');
    if (json['hour'] != null) {
      hour = <Hour>[];
      json['hour'].forEach((v) {
        hour!.add(Hour.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (day != null) {
      data['day'] = day!.toJson();
    }
    data['date'] = date;
    data['date_epoch'] = dateEpoch;
    if (hour != null) {
      data['hour'] = hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Day {
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  double? totalprecipIn;
  double? avgvisKm;
  double? avgvisMiles;
  double? avghumidity;
  double? dailyWillItRain;
  double? dailyChanceOfRain;
  double? dailyWillItSnow;
  double? dailyChanceOfSnow;
  Condition? condition;
  double? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = (json['maxtemp_c'] is int)
        ? (json['maxtemp_c'] as int).toDouble()
        : json['maxtemp_c']?.toDouble();
    maxtempF = (json['maxtemp_f'] is int)
        ? (json['maxtemp_f'] as int).toDouble()
        : json['maxtemp_f']?.toDouble();
    mintempC = (json['mintemp_c'] is int)
        ? (json['mintemp_c'] as int).toDouble()
        : json['mintemp_c']?.toDouble();
    mintempF = (json['mintemp_f'] is int)
        ? (json['mintemp_f'] as int).toDouble()
        : json['mintemp_f']?.toDouble();
    avgtempC = (json['avgtemp_c'] is int)
        ? (json['avgtemp_c'] as int).toDouble()
        : json['avgtemp_c']?.toDouble();
    avgtempF = (json['avgtemp_f'] is int)
        ? (json['avgtemp_f'] as int).toDouble()
        : json['avgtemp_f']?.toDouble();
    maxwindMph = (json['maxwind_mph'] is int)
        ? (json['maxwind_mph'] as int).toDouble()
        : json['maxwind_mph']?.toDouble();
    maxwindKph = (json['maxwind_kph'] is int)
        ? (json['maxwind_kph'] as int).toDouble()
        : json['maxwind_kph']?.toDouble();
    totalprecipMm = (json['totalprecip_mm'] is int)
        ? (json['totalprecip_mm'] as int).toDouble()
        : json['totalprecip_mm']?.toDouble();
    totalprecipIn = (json['totalprecip_in'] is int)
        ? (json['totalprecip_in'] as int).toDouble()
        : json['totalprecip_in']?.toDouble();
    avgvisKm = (json['avgvis_km'] is int)
        ? (json['avgvis_km'] as int).toDouble()
        : json['avgvis_km']?.toDouble();
    avgvisMiles = (json['avgvis_miles'] is int)
        ? (json['avgvis_miles'] as int).toDouble()
        : json['avgvis_miles']?.toDouble();
    avghumidity = (json['avghumidity'] is int)
        ? (json['avghumidity'] as int).toDouble()
        : json['avghumidity']?.toDouble();
    dailyWillItRain = (json['daily_will_it_rain'] is int)
        ? (json['daily_will_it_rain'] as int).toDouble()
        : json['daily_will_it_rain']?.toDouble();
    dailyChanceOfRain = (json['daily_chance_of_rain'] is int)
        ? (json['daily_chance_of_rain'] as int).toDouble()
        : json['daily_chance_of_rain']?.toDouble();
    dailyWillItSnow = (json['daily_will_it_snow'] is int)
        ? (json['daily_will_it_snow'] as int).toDouble()
        : json['daily_will_it_snow']?.toDouble();
    dailyChanceOfSnow = (json['daily_chance_of_snow'] is int)
        ? (json['daily_chance_of_snow'] as int).toDouble()
        : json['daily_chance_of_snow']?.toDouble();
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    uv = (json['uv'] is int)
        ? (json['uv'] as int).toDouble()
        : json['uv']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['maxtemp_c'] = maxtempC;
    data['maxtemp_f'] = maxtempF;
    data['mintemp_c'] = mintempC;
    data['mintemp_f'] = mintempF;
    data['avgtemp_c'] = avgtempC;
    data['avgtemp_f'] = avgtempF;
    data['maxwind_mph'] = maxwindMph;
    data['maxwind_kph'] = maxwindKph;
    data['totalprecip_mm'] = totalprecipMm;
    data['totalprecip_in'] = totalprecipIn;
    data['avgvis_km'] = avgvisKm;
    data['avgvis_miles'] = avgvisMiles;
    data['avghumidity'] = avghumidity;
    data['daily_will_it_rain'] = dailyWillItRain;
    data['daily_chance_of_rain'] = dailyChanceOfRain;
    data['daily_will_it_snow'] = dailyWillItSnow;
    data['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['uv'] = uv;
    return data;
  }
}

class Astro {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moonPhase;
  final int moonIllumination;
  final int isMoonUp;
  final int isSunUp;

  Astro({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.moonIllumination,
    required this.isMoonUp,
    required this.isSunUp,
  });

  // Factory method to create an instance of Astro from a JSON object
  factory Astro.fromJson(Map<String, dynamic> json) {
    return Astro(
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonrise: json['moonrise'],
      moonset: json['moonset'],
      moonPhase: json['moon_phase'],
      moonIllumination: json['moon_illumination'],
      isMoonUp: json['is_moon_up'],
      isSunUp: json['is_sun_up'],
    );
  }

  // Method to convert the Astro object into a JSON object
  Map<String, dynamic> toJson() {
    return {
      'sunrise': sunrise,
      'sunset': sunset,
      'moonrise': moonrise,
      'moonset': moonset,
      'moon_phase': moonPhase,
      'moon_illumination': moonIllumination,
      'is_moon_up': isMoonUp,
      'is_sun_up': isSunUp,
    };
  }
}

class Hour {
  String? time;
  int? timeEpoch;
  double? tempC;
  double? tempF;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  Hour({
    this.time,
    this.timeEpoch,
    this.tempC,
    this.tempF,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  Hour.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    timeEpoch = json['time_epoch'] is int
        ? json['time_epoch'] as int
        : int.tryParse(json['time_epoch']?.toString() ?? '');
    tempC = (json['temp_c'] is int)
        ? (json['temp_c'] as int).toDouble()
        : json['temp_c']?.toDouble();
    tempF = (json['temp_f'] is int)
        ? (json['temp_f'] as int).toDouble()
        : json['temp_f']?.toDouble();
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = (json['wind_mph'] is int)
        ? (json['wind_mph'] as int).toDouble()
        : json['wind_mph']?.toDouble();
    windKph = (json['wind_kph'] is int)
        ? (json['wind_kph'] as int).toDouble()
        : json['wind_kph']?.toDouble();
    windDegree = json['wind_degree'] is int
        ? json['wind_degree'] as int
        : int.tryParse(json['wind_degree']?.toString() ?? '');
    windDir = json['wind_dir'];
    pressureMb = (json['pressure_mb'] is int)
        ? (json['pressure_mb'] as int).toDouble()
        : json['pressure_mb']?.toDouble();
    pressureIn = (json['pressure_in'] is int)
        ? (json['pressure_in'] as int).toDouble()
        : json['pressure_in']?.toDouble();
    precipMm = (json['precip_mm'] is int)
        ? (json['precip_mm'] as int).toDouble()
        : json['precip_mm']?.toDouble();
    precipIn = (json['precip_in'] is int)
        ? (json['precip_in'] as int).toDouble()
        : json['precip_in']?.toDouble();
    humidity = json['humidity'] is int
        ? json['humidity'] as int
        : int.tryParse(json['humidity']?.toString() ?? '');
    cloud = json['cloud'] is int
        ? json['cloud'] as int
        : int.tryParse(json['cloud']?.toString() ?? '');
    feelslikeC = (json['feelslike_c'] is int)
        ? (json['feelslike_c'] as int).toDouble()
        : json['feelslike_c']?.toDouble();
    feelslikeF = (json['feelslike_f'] is int)
        ? (json['feelslike_f'] as int).toDouble()
        : json['feelslike_f']?.toDouble();
    windchillC = (json['windchill_c'] is int)
        ? (json['windchill_c'] as int).toDouble()
        : json['windchill_c']?.toDouble();
    windchillF = (json['windchill_f'] is int)
        ? (json['windchill_f'] as int).toDouble()
        : json['windchill_f']?.toDouble();
    heatindexC = (json['heatindex_c'] is int)
        ? (json['heatindex_c'] as int).toDouble()
        : json['heatindex_c']?.toDouble();
    heatindexF = (json['heatindex_f'] is int)
        ? (json['heatindex_f'] as int).toDouble()
        : json['heatindex_f']?.toDouble();
    dewpointC = (json['dewpoint_c'] is int)
        ? (json['dewpoint_c'] as int).toDouble()
        : json['dewpoint_c']?.toDouble();
    dewpointF = (json['dewpoint_f'] is int)
        ? (json['dewpoint_f'] as int).toDouble()
        : json['dewpoint_f']?.toDouble();
    visKm = (json['vis_km'] is int)
        ? (json['vis_km'] as int).toDouble()
        : json['vis_km']?.toDouble();
    visMiles = (json['vis_miles'] is int)
        ? (json['vis_miles'] as int).toDouble()
        : json['vis_miles']?.toDouble();
    uv = (json['uv'] is int)
        ? (json['uv'] as int).toDouble()
        : json['uv']?.toDouble();
    gustMph = (json['gust_mph'] is int)
        ? (json['gust_mph'] as int).toDouble()
        : json['gust_mph']?.toDouble();
    gustKph = (json['gust_kph'] is int)
        ? (json['gust_kph'] as int).toDouble()
        : json['gust_kph']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['time_epoch'] = timeEpoch;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'] is int
        ? json['code'] as int
        : int.tryParse(json['code']?.toString() ?? '');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}
