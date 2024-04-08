// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetWeatherCityByNameQuery: GraphQLQuery {
  public static let operationName: String = "GetWeatherCityByName"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetWeatherCityByName($city: String!) { getCityByName(name: $city, config: { units: imperial }) { __typename name country weather { __typename summary { __typename title description icon } temperature { __typename actual feelsLike } clouds { __typename all visibility humidity } } } }"#
    ))

  public var city: String

  public init(city: String) {
    self.city = city
  }

  public var __variables: Variables? { ["city": city] }

  public struct Data: WeatherSchemaAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getCityByName", GetCityByName?.self, arguments: [
        "name": .variable("city"),
        "config": ["units": "imperial"]
      ]),
    ] }

    public var getCityByName: GetCityByName? { __data["getCityByName"] }

    /// GetCityByName
    ///
    /// Parent Type: `City`
    public struct GetCityByName: WeatherSchemaAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.City }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String?.self),
        .field("country", String?.self),
        .field("weather", Weather?.self),
      ] }

      public var name: String? { __data["name"] }
      public var country: String? { __data["country"] }
      public var weather: Weather? { __data["weather"] }

      /// GetCityByName.Weather
      ///
      /// Parent Type: `Weather`
      public struct Weather: WeatherSchemaAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.Weather }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("summary", Summary?.self),
          .field("temperature", Temperature?.self),
          .field("clouds", Clouds?.self),
        ] }

        public var summary: Summary? { __data["summary"] }
        public var temperature: Temperature? { __data["temperature"] }
        public var clouds: Clouds? { __data["clouds"] }

        /// GetCityByName.Weather.Summary
        ///
        /// Parent Type: `Summary`
        public struct Summary: WeatherSchemaAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.Summary }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("title", String?.self),
            .field("description", String?.self),
            .field("icon", String?.self),
          ] }

          public var title: String? { __data["title"] }
          public var description: String? { __data["description"] }
          public var icon: String? { __data["icon"] }
        }

        /// GetCityByName.Weather.Temperature
        ///
        /// Parent Type: `Temperature`
        public struct Temperature: WeatherSchemaAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.Temperature }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("actual", Double?.self),
            .field("feelsLike", Double?.self),
          ] }

          public var actual: Double? { __data["actual"] }
          public var feelsLike: Double? { __data["feelsLike"] }
        }

        /// GetCityByName.Weather.Clouds
        ///
        /// Parent Type: `Clouds`
        public struct Clouds: WeatherSchemaAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { WeatherSchemaAPI.Objects.Clouds }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("all", Int?.self),
            .field("visibility", Int?.self),
            .field("humidity", Int?.self),
          ] }

          public var all: Int? { __data["all"] }
          public var visibility: Int? { __data["visibility"] }
          public var humidity: Int? { __data["humidity"] }
        }
      }
    }
  }
}
