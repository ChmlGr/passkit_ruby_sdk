# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/common/note.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/common/note.proto', :syntax => :proto3) do
    add_message 'io.Note' do
      optional :subjectId, :string, 1
      optional :username, :string, 2
      optional :message, :string, 3
      optional :created, :message, 4, 'google.protobuf.Timestamp'
    end
  end
end

module PasskitSdk
  module Io
    Note = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.Note').msgclass
  end
end
