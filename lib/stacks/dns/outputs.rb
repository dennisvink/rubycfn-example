module DnsStack
  module Outputs
  extend ActiveSupport::Concern

    included do
      output :hosted_zone_id,
              value: "HostedZone".ref,
              description: "HostedZoneId",
              export: {
                "Name": ["AWS::StackName".ref, "HostedZoneId"].fnjoin(":")
              }
    end
  end
end
