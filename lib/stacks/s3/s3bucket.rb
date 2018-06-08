module S3Stack
  module S3Bucket
    extend ActiveSupport::Concern

    included do
      resource :my_s3_bucket,
               amount: 10,
               type: "AWS::S3::Bucket"
    end
  end
end
