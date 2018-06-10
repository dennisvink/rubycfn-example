module DnsStack
  module HostedZone
  extend ActiveSupport::Concern

  included do
    variable :environment,
             default: "production",
             value: ENV["ENVIRONMENT"]

    description "Route53 #{environment} Stack"
    resource :hosted_zone,
             type: "AWS::Route53::HostedZone" do |r|
        r.property(:hosted_zone_config) do
          {
            Comment: [
              "Hosted Zone for #{environment} ",
              "DomainName".ref
            ].fnjoin
          }
        end
        r.property(:name) { "DomainName".ref }
      end
    end
  end
end
