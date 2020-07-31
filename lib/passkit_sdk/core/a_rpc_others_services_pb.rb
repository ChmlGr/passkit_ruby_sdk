# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: passkit_sdk/core/a_rpc_others.proto for package 'io'

require 'grpc'
require 'passkit_sdk/core/a_rpc_others_pb'

module PasskitSdk
  module Io
    module Users
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'io.Users'

        rpc :createUser, NewUser, NewUserResponse
        rpc :newUser, NewUser, JWT
        rpc :verify, Id, Boolean
        rpc :resendVerificationEmail, Google::Protobuf::Empty, Boolean
        rpc :getUser, Google::Protobuf::Empty, GetUserResponse
        rpc :login, Credentials, JWT
        rpc :resetPassword, Credentials, Google::Protobuf::Empty
        rpc :sendPasswordResetLink, Username, Google::Protobuf::Empty
        rpc :changePassword, PasswordResetInput, Google::Protobuf::Empty
        rpc :getProjectsForUserQueryDeprecated, Pagination, stream(Project)
        rpc :getProjectsQueryDeprecated, Pagination, stream(Project)
        rpc :getProjectsForUserQuery, Filters, stream(Project)
        rpc :getProjectsQuery, Filters, stream(Project)
        rpc :getProjectByUuid, Id, Project
        rpc :getProjectAndTemplateByShortCode, Id, ProjectByShortCodeResult
        rpc :getProjectsForUser, ProjectStatusFilter, stream(Project)
        rpc :getProjects, ProjectStatusFilter, stream(Project)
      end

      Stub = Service.rpc_stub_class
    end

    module Messages
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'io.Messages'

        rpc :sendMessage, Message, Id
        rpc :getMessages, Pagination, stream(Message)
      end

      Stub = Service.rpc_stub_class
    end

    module Distribution
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'io.Distribution'

        rpc :sendWelcomeEmail, EmailDistributionRequest, Google::Protobuf::Empty
      end

      Stub = Service.rpc_stub_class
    end

    module Jobs
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'io.Jobs'

        rpc :importCsv, CsvImportRequest, Id
        rpc :getJobs, Pagination, stream(Job)
        rpc :getJob, Id, Job
      end

      Stub = Service.rpc_stub_class
    end

    module Integrations
      class Service
        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'io.Integrations'

        rpc :createIntegrations, IntegrationConfigs, Id
        rpc :getIntegrations, ProtocolIdInput, IntegrationConfigs
        rpc :updateIntegrations, IntegrationConfigs, Id
        rpc :deleteIntegrations, ProtocolIdInput, Google::Protobuf::Empty
        rpc :createSinkSubscription, SinkSubscription, Id
        rpc :getSinkSubscription, SubscriptionRequest, SinkSubscription
        rpc :listSinkSubscriptionsDeprecated, ListRequestDeprecated, stream(SinkSubscription)
        rpc :listSinkSubscriptions, ListRequest, stream(SinkSubscription)
        rpc :updateSinkSubscription, SinkSubscription, Id
        rpc :deleteSinkSubscription, SubscriptionRequest, Google::Protobuf::Empty
        rpc :getSampleSubscriptionEvent, Id, SinkSubscription
      end

      Stub = Service.rpc_stub_class
    end
  end
end
