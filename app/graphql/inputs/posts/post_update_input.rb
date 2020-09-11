module Inputs
  module Posts
    class PostUpdateInput < Types::BaseInputObject
      def self.model_scope
        :post
      end

      description "更新文章"

      argument :node_id, ID, required: true, loads: Models::PostType
      argument :title, String, required: false
      argument :desc, String, required: false
    end
  end
end