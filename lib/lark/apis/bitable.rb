module Lark
  module Apis
    module Bitable
      def batch_get_records(app_token, table_id, record_ids, user_id_type)
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/batch_get?", {
          record_ids: record_ids,
          user_id_type: user_id_type
        }
      end

      def update(app_token, table_id, record_id, user_id_type, fields)
        put "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/#{record_id}?user_id_type=#{user_id_type}", {
          fields: fields
        }
      end

      def create(app_token, table_id, user_id_type, fields)
        puts("Creating record in Bitable app_token: #{app_token}, table_id: #{table_id}, fields: #{fields}")
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records?user_id_type=#{user_id_type}", {
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
