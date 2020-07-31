# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: passkit_sdk/single_use_coupons/campaign.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'passkit_sdk/common/localization_pb'
require 'passkit_sdk/common/project_pb'
require 'passkit_sdk/common/reporting_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('passkit_sdk/single_use_coupons/campaign.proto', :syntax => :proto3) do
    add_message 'single_use_coupons.CouponCampaign' do
      optional :id, :string, 1
      optional :name, :string, 2
      optional :localizedName, :message, 3, 'io.LocalizedString'
      repeated :status, :enum, 5, 'io.ProjectStatus'
      optional :passTypeIdentifier, :string, 6
      optional :ianaTimezone, :string, 7
      optional :created, :message, 10, 'google.protobuf.Timestamp'
      optional :updated, :message, 11, 'google.protobuf.Timestamp'
    end
    add_message 'single_use_coupons.CouponCampaignAnalyticsResponse' do
      optional :period, :enum, 1, 'io.Period'
      optional :redeemed, :uint32, 2
      optional :devices, :message, 3, 'io.DeviceBreakdown'
      map :sources, :string, :uint32, 4
      repeated :data, :message, 5, 'io.ChartDataPoints'
    end
    add_message 'single_use_coupons.CampaignCopyRequest' do
      optional :id, :string, 1
      optional :name, :string, 2
      repeated :status, :enum, 3, 'io.ProjectStatus'
      optional :passTypeIdentifier, :string, 4
    end
  end
end

module PasskitSdk
  module SingleUseCoupons
    CouponCampaign = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('single_use_coupons.CouponCampaign').msgclass
    CouponCampaignAnalyticsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('single_use_coupons.CouponCampaignAnalyticsResponse').msgclass
    CampaignCopyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('single_use_coupons.CampaignCopyRequest').msgclass
  end
end