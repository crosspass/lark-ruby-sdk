module Lark
  module Apis
    module TrustParty
      def messages(payload)
        post 'trust_party/v1/trust_party_messages?receive_id_type=open_id', payload
      end

      def collaboration_tenants(page_token: nil, page_size:)
        get '/open-apis/trust_party/v1/collaboration_tenants', params: {
          page_token: page_token,
          page_size: page_size,
        }.compact
      end

      def visible_organization(target_tenant_key:, target_department_id:, page_token: "", department_id_type: 'department_id')
        get "/open-apis/trust_party/v1/collaboration_tenants/#{target_tenant_key}/visible_organization", params: {
          target_department_id: target_department_id,
          department_id_type: department_id_type,
          page_token: page_token
        }
      end
    end
  end
end
