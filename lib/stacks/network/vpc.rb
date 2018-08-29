module NetworkStack
  module VPC
    extend ActiveSupport::Concern

    included do
      variable :cidr_block,
               default: "10.0.0.0/16"
      variable :enable_dns_support,
               default: true
      variable :enable_dns_hostnames,
               default: true

      resource :my_first,
               type: RubyCfn::VPC do |r|
        r.set(:cidr_block) { "10.1.0.0/16" }
      end
    end
  end
end
