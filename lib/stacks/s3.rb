module S3Stack
  extend ActiveSupport::Concern
  include Rubycfn

  included do
    include S3Stack::S3Bucket
  end
end
