# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/common/message.proto

require 'google/protobuf'

require 'passkit_sdk/common/localization_pb'
require 'passkit_sdk/common/pagination_pb'
require 'google/protobuf/timestamp_pb'
require 'passkit_sdk/common/protocols_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/common/message.proto', :syntax => :proto3) do
    add_message 'io.Message' do
      optional :protocol, :enum, 1, 'io.PassProtocol'
      optional :companyId, :string, 2
      optional :classId, :string, 3
      optional :uuid, :string, 4
      optional :status, :enum, 5, 'io.MessageStatus'
      optional :warning, :string, 6
      optional :imageId, :uint32, 7
      optional :title, :string, 8
      optional :localizedTitle, :message, 9, 'io.LocalizedString'
      optional :content, :string, 10
      optional :localizedContent, :message, 11, 'io.LocalizedString'
      optional :startDate, :message, 12, 'google.protobuf.Timestamp'
      optional :endDate, :message, 13, 'google.protobuf.Timestamp'
      optional :filter, :message, 14, 'io.Filter'
      optional :recordsMatchingSegment, :uint32, 15
      optional :recordsSuccessfullyUpdate, :uint32, 16
      optional :recordsFailedToUpdate, :uint32, 17
      optional :created, :message, 18, 'google.protobuf.Timestamp'
    end
    add_enum 'io.MessageStatus' do
      value :CREATED, 0
      value :PROCESSING, 1
      value :ABORTED_WITH_ERRORS, 2
      value :COMPLETED_WITH_WARNINGS, 3
      value :COMPLETED_WITH_ERRORS, 4
      value :COMPLETED_WITHOUT_ERRORS, 5
    end
  end
end

module PasskitSdk
  module Io
    Message = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.Message').msgclass
    MessageStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.MessageStatus').enummodule
  end
end