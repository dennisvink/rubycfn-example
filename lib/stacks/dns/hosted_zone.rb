module DnsStack
  module HostedZone
  extend ActiveSupport::Concern

  included do
    resource :hosted_zone,
               type: "AWS::Route53::HostedZone" do |r|
        r.property(:hosted_zone_config) do
          {
            Comment: [
              "Hosted Zone for ",
              "DomainName".ref
            ].fnjoin
          }
        end
        r.property(:name) { "DomainName".ref }
      end
    end
  end
end
