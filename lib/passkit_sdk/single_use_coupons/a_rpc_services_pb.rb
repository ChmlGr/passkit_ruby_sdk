# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: passkit_sdk/single_use_coupons/a_rpc.proto for package 'single_use_coupons'
# Original file comments:
# *
# Single Use Coupon Protocol is suit for cases where the user requires a clean and simple single use coupon for short term coupon campaigns in Apple Wallet and Google Pay.

require 'grpc'
require 'passkit_sdk/single_use_coupons/a_rpc_pb'

module PasskitSdk
  module SingleUseCoupons
    class Service
      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'single_use_coupons.SingleUseCoupons'

      rpc :createCouponCampaign, CouponCampaign, Io::Id
      rpc :updateCouponCampaign, CouponCampaign, CouponCampaign
      rpc :getCouponCampaign, Io::Id, CouponCampaign
      rpc :deleteCouponCampaign, Io::Id, Google::Protobuf::Empty
      rpc :listCouponCampaignsDeprecated, Io::Pagination, stream(CouponCampaign)
      rpc :listCouponCampaigns, Io::Filters, stream(CouponCampaign)
      rpc :getAnalytics, Io::AnalyticsRequest, CouponCampaignAnalyticsResponse
      rpc :createCouponOffer, CouponOffer, Io::Id
      rpc :updateCouponOffer, CouponOffer, CouponOffer
      rpc :getCouponOffer, Io::Id, CouponOffer
      rpc :deleteCouponOffer, Io::Id, Google::Protobuf::Empty
      rpc :listCouponOffersDeprecated, CouponOffersListRequestDeprecated, stream(CouponOffer)
      rpc :listCouponOffers, CouponOffersListRequest, stream(CouponOffer)
      rpc :createCoupon, Coupon, Io::Id
      rpc :updateCoupon, Coupon, Io::Id
      rpc :streamCouponUpdates, stream(Coupon), stream(Io::Id)
      rpc :redeemCoupon, Coupon, Io::Id
      rpc :streamCouponRedemptions, stream(Coupon), stream(Io::Id)
      rpc :getCouponById, Io::Id, Coupon
      rpc :getCouponByExternalId, ExternalIdRequest, Coupon
      rpc :voidCoupon, Coupon, Google::Protobuf::Empty
      rpc :listCouponsByCouponCampaignDeprecated, ListRequestDeprecated, stream(Coupon)
      rpc :listCouponsByCouponCampaign, ListRequest, stream(Coupon)
      rpc :countCouponsByCouponCampaignDeprecated, ListRequestDeprecated, Io::Count
      rpc :countCouponsByCouponCampaign, ListRequest, Io::Count
      rpc :copyCouponCampaign, CampaignCopyRequest, Io::Id
      rpc :getMetaKeysForCampaign, Io::Id, Io::Strings
    end

    Stub = Service.rpc_stub_class
  end
end
