# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/common/reporting.proto

require 'google/protobuf'

require 'passkit_sdk/common/protocols_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/common/reporting.proto', :syntax => :proto3) do
    add_message 'io.AnalyticsResponse' do
      optional :period, :enum, 1, 'io.Period'
      optional :created, :uint32, 2
      optional :installed, :uint32, 3
      optional :deleted, :uint32, 4
      optional :invalidated, :uint32, 5
      optional :deviceBreakdown, :message, 6, 'io.DeviceBreakdown'
      map :sourceBreakdown, :string, :uint32, 7
      repeated :data, :message, 8, 'io.ChartDataPoints'
    end
    add_message 'io.DeviceBreakdown' do
      optional :appleWallet, :uint32, 1
      optional :googlePay, :uint32, 2
      optional :otherWallet, :uint32, 3
    end
    add_message 'io.ChartDataPoints' do
      optional :name, :string, 1
      optional :created, :uint32, 2
      optional :installed, :uint32, 3
      optional :updated, :uint32, 4
      optional :deleted, :uint32, 5
      optional :invalidated, :uint32, 6
      optional :custom, :uint32, 7
    end
    add_message 'io.AnalyticsRequest' do
      optional :protocol, :enum, 1, 'io.PassProtocol'
      optional :classId, :string, 2
      optional :period, :enum, 3, 'io.Period'
      optional :startDate, :string, 4
      optional :endDate, :string, 5
      optional :timezone, :string, 6
    end
    add_enum 'io.Period' do
      value :DAY, 0
      value :MONTH, 1
      value :YEAR, 2
    end
  end
end

module PasskitSdk
  module Io
    AnalyticsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.AnalyticsResponse').msgclass
    DeviceBreakdown = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.DeviceBreakdown').msgclass
    ChartDataPoints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ChartDataPoints').msgclass
    AnalyticsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.AnalyticsRequest').msgclass
    Period = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.Period').enummodule
  end
end
