# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/image/image.proto

require 'google/protobuf'

require 'passkit_sdk/common/localization_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/image/image.proto', :syntax => :proto3) do
    add_message 'io.ImageIds' do
      optional :icon, :string, 1
      optional :logo, :string, 2
      optional :appleLogo, :string, 3
      optional :hero, :string, 4
      optional :eventStrip, :string, 5
      optional :strip, :string, 6
      optional :thumbnail, :string, 7
      optional :background, :string, 8
      optional :footer, :string, 9
      optional :security, :string, 10
      optional :privilege, :string, 11
      optional :airlineAlliance, :string, 12
      optional :personalization, :string, 13
      optional :banner, :string, 14
      optional :message, :string, 15
      optional :profile, :string, 16
      optional :appImage, :string, 17
    end
    add_message 'io.ImageData' do
      optional :icon, :string, 1
      optional :logo, :string, 2
      optional :appleLogo, :string, 3
      optional :hero, :string, 4
      optional :eventStrip, :string, 5
      optional :strip, :string, 6
      optional :thumbnail, :string, 7
      optional :background, :string, 8
      optional :footer, :string, 9
      optional :security, :string, 10
      optional :privilege, :string, 11
      optional :airlineAlliance, :string, 12
      optional :personalization, :string, 13
      optional :banner, :string, 14
      optional :message, :string, 15
      optional :profile, :string, 16
      optional :appImage, :string, 17
      optional :localizedIcon, :message, 31, 'io.LocalizedString'
      optional :localizedLogo, :message, 32, 'io.LocalizedString'
      optional :localizedAppleLogo, :message, 33, 'io.LocalizedString'
      optional :localizedHero, :message, 34, 'io.LocalizedString'
      optional :localizedEventStrip, :message, 35, 'io.LocalizedString'
      optional :localizedStrip, :message, 36, 'io.LocalizedString'
      optional :localizedThumbnail, :message, 37, 'io.LocalizedString'
      optional :localizedBackground, :message, 38, 'io.LocalizedString'
      optional :localizedFooter, :message, 39, 'io.LocalizedString'
      optional :localizedSecurity, :message, 40, 'io.LocalizedString'
      optional :localizedPrivilege, :message, 41, 'io.LocalizedString'
      optional :localizedAirlineAlliance, :message, 42, 'io.LocalizedString'
      optional :localizedPersonalization, :message, 43, 'io.LocalizedString'
      optional :localizedBanner, :message, 44, 'io.LocalizedString'
      optional :localizedMessage, :message, 45, 'io.LocalizedString'
    end
    add_message 'io.ImageRecord' do
      optional :id, :string, 1
      optional :name, :string, 2
      optional :url, :string, 3
      optional :use, :enum, 5, 'io.ImageUse'
      repeated :languages, :enum, 6, 'io.LanguageCode'
      optional :ownerUsername, :string, 7
      optional :createdAt, :message, 8, 'google.protobuf.Timestamp'
      optional :updatedAt, :message, 9, 'google.protobuf.Timestamp'
    end
    add_message 'io.ProfileImageInput' do
      optional :imageData, :string, 1
    end
    add_message 'io.MultipleImages' do
      repeated :images, :message, 1, 'io.ImageRecord'
    end
    add_message 'io.CreateImageInput' do
      optional :name, :string, 1
      optional :imageData, :message, 2, 'io.ImageData'
    end
    add_message 'io.UpdateImageInput' do
      optional :id, :string, 1
      optional :name, :string, 2
      optional :imageData, :string, 3
      optional :localizedImageData, :message, 4, 'io.LocalizedString'
    end
    add_message 'io.ImageBundle' do
      optional :image, :bytes, 1
    end
    add_message 'io.LocalizedImageInput' do
      optional :id, :string, 1
      optional :languageCode, :string, 2
    end
    add_enum 'io.ImageUse' do
      value :Icon, 0
      value :Logo, 1
      value :AppleLogo, 2
      value :Hero, 3
      value :EventStrip, 4
      value :Strip, 5
      value :Thumbnail, 6
      value :Background, 7
      value :Footer, 8
      value :Security, 9
      value :Privilege, 10
      value :AirlineAlliance, 11
      value :Personalization, 12
      value :Banner, 13
      value :Message, 14
      value :Profile, 15
      value :AppImage, 16
    end
  end
end

module PasskitSdk
  module Io
    ImageIds = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ImageIds').msgclass
    ImageData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ImageData').msgclass
    ImageRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ImageRecord').msgclass
    ProfileImageInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ProfileImageInput').msgclass
    MultipleImages = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.MultipleImages').msgclass
    CreateImageInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.CreateImageInput').msgclass
    UpdateImageInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.UpdateImageInput').msgclass
    ImageBundle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ImageBundle').msgclass
    LocalizedImageInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.LocalizedImageInput').msgclass
    ImageUse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('io.ImageUse').enummodule
  end
end