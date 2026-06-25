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
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records?user_id_type=#{user_id_type}", {
          fields: fields
        }
      end

      def delete_record(app_token, table_id, record_id)
        delete "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/#{record_id}"
      end

      def batch_create_records(app_token, table_id, user_id_type, records)
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/batch_create?user_id_type=#{user_id_type}", {
          records: records
        }
      end

      def batch_update_records(app_token, table_id, user_id_type, records)
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/batch_update?user_id_type=#{user_id_type}", {
          records: records
        }
      end

      def batch_delete_records(app_token, table_id, records)
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/batch_delete", {
          records: records
        }
      end

      def search_records(app_token, table_id, query = {})
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/search", query
      end

      def fields(app_token, table_id)
        get "bitable/v1/apps/#{app_token}/tables/#{table_id}/fields"
      end

      def create_field(app_token, table_id, field)
        post "bitable/v1/apps/#{app_token}/tables/#{table_id}/fields", field
      end

      def update_field(app_token, table_id, field_id, field)
        put "bitable/v1/apps/#{app_token}/tables/#{table_id}/fields/#{field_id}", field
      end

      def delete_field(app_token, table_id, field_id)
        delete "bitable/v1/apps/#{app_token}/tables/#{table_id}/fields/#{field_id}"
      end

      # 获取知识空间节点信息
      def wiki_node_info(node_token)
        get "wiki/v2/spaces/get_node?token=#{node_token}"
      end
    end
  end
end
