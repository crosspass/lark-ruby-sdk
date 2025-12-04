module Lark
  module Apis
    module Bitable
      def update(app_token, table_id, record_id, fields)
        put "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/#{record_id}", {
          fields: fields
        }
      end

      def create(app_token, table_id, fields)
        puts("Creating record in Bitable app_token: #{app_token}, table_id: #{table_id}, fields: #{fields}")
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/", {
          fields: fields
        }
      end

      # 获取知识空间节点信息
      def wiki_node_info(tenant_access_token, node_token)
        get "wiki/v2/spaces/get_node?token=#{node_token}"
      end
    end
  end
end
