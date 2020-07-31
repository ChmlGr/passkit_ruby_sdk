# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/flights/flight.proto

require 'google/protobuf'

require 'passkit_sdk/common/common_objects_pb'
require 'passkit_sdk/common/proximity_pb'
require 'passkit_sdk/common/links_pb'
require 'passkit_sdk/common/metrics_pb'
require 'passkit_sdk/flights/flight_designator_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/flights/flight.proto', :syntax => :proto3) do
    add_message 'flights.Flight' do
      optional :carrierCode, :string, 1
      optional :flightNumber, :string, 2
      optional :boardingPoint, :string, 3
      optional :deplaningPoint, :string, 4
      optional :departureDate, :message, 5, 'io.Date'
      optional :departureTerminal, :string, 6
      optional :arrivalTerminal, :string, 7
      optional :departureGate, :string, 8
      optional :arrivalGate, :string, 9
      optional :scheduledDepartureTime, :message, 10, 'io.LocalDateTime'
      optional :estimatedDepartureTime, :message, 11, 'io.LocalDateTime'
      optional :boardingTime, :message, 12, 'io.LocalDateTime'
      optional :gateClosingTime, :message, 13, 'io.LocalDateTime'
      optional :scheduledArrivalTime, :message, 14, 'io.LocalDateTime'
      optional :estimatedArrivalTime, :message, 15, 'io.LocalDateTime'
      optional :operatingCarrierCode, :string, 16
      optional :operatingFlightNumber, :string, 17
      repeated :codeShareFlightNumbers, :string, 18
      optional :passTemplateId, :string, 19
      optional :baggageBelt, :string, 21
      optional :autoInvalidateAfter, :uint32, 22
      optional :autoInvalidateCancelledPasses, :bool, 23
      repeated :locationMessages, :message, 24, 'io.GPSLocation'
      repeated :beaconMessages, :message, 25, 'io.Beacon'
      repeated :links, :message, 26, 'io.Link'
      optional :suspendAutomaticUpdates, :bool, 27
      optional :boardingPolicy, :enum, 28, 'flights.BoardingPolicy'
      optional :seatingPolicy, :enum, 29, 'flights.SeatClassPolicy'
      optional :status, :enum, 30, 'flights.FlightStatus'
      optional :ConditionalItems, :bool, 31
      optional :BarcodeAdditionalData, :string, 32
      optional :metrics, :message, 33, 'io.Metrics'
      optional :createMethod, :enum, 34, 'flights.FlightCreateMode'
      optional :designatorId, :string, 35
    end
    add_message 'flights.FlightRequest' do
      optional :carrierCode, :string, 1
      optional :flightNumber, :string, 2
      optional :departureDate, :message, 3, 'io.Date'
      optional :boardingPoint, :string, 5
      optional :deplaningPoint, :string, 6
    end
    add_enum 'flights.FlightStatus' do
      value :UNKNOWN, 0
      value :SCHEDULED, 1
      value :DEPARTED, 2
      value :INAIR, 3
      value :LANDED, 4
      value :ARRIVED, 5
      value :CANCELLED, 6
      value :DELAYED, 7
      value :DEPARTED_DIVERTED, 8
      value :INAIR_DIVERTED, 9
      value :ARRIVED_DIVERTED, 10
      value :DEPARTED_RECOVERY, 11
      value :INAIR_RECOVERY, 12
      value :ARRIVED_RECOVERY, 13
    end
    add_enum 'flights.FlightCreateMode' do
      value :DO_NOT_USE, 0
      value :MANUAL, 1
      value :AUTOMATIC, 2
    end
  end
end

module PasskitSdk
  module Flights
    Flight = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('flights.Flight').msgclass
    FlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('flights.FlightRequest').msgclass
    FlightStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('flights.FlightStatus').enummodule
    FlightCreateMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('flights.FlightCreateMode').enummodule
  end
end
