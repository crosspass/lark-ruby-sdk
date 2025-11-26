module Lark
  module Apis
    module Bitable
      def update(app_token, table_id, record_id, fields)

        put "bitable/v1/apps/#{app_token}/tables/#{table_id}/records/#{record_id}", {
          fields: fields
        }
      end
    end
  end
end
