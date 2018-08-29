module NetworkStack
  extend ActiveSupport::Concern
  include Rubycfn

  included do
    include NetworkStack::VPC
  end
end
