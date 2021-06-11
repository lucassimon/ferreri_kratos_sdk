# require 'ory-kratos-client'

# configuration = OryHydraClient::Configuration.New(
#     host = "http://localhost:4433"
# )

module FerreriKratosSdk
    module Clients        
        class ClientOry
            def initialize
                # configuration = OryHydraClient::Configuration.New(
                #     host = "http://localhost:4433"
                # )
                # @cli = OryHydraClient::PublicApi.new(config=configuration)

            end

            def register(payload)
                # data, status_code, headers = get_registration_api
                binding.pry
                # data, status_code, headers = post_registration_api(payload, data)
                binding.pry
                return data
            end

            def get_registration_api()
                begin
                    # data, status_code, headers = @cli.initialize_self_service_registration_for_native_apps_with_http_info
                    binding.pry
                    # return data, status_code, headers
                rescue OryHydraClient::ApiError => e
                    puts "Error when calling PublicApi->initialize_self_service_registration_for_native_apps_with_http_info: #{e}"
                end
            end

            def post_registration_api(payload, flow_id)
                flow = 'flow_example' # String | The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).
                opts = {
                    submit_self_service_registration_flow: OryHydraClient::SubmitSelfServiceRegistrationFlowWithPasswordMethod.new(payload) # SubmitSelfServiceRegistrationFlow | 
                }

                begin
                    # Submit a Registration Flow
                    # data, status_code, headers = @cli.submit_self_service_registration_flow_with_http_info(flow, opts)
                rescue OryHydraClient::ApiError => e
                    puts "Error when calling PublicApi->submit_self_service_registration_flow_with_http_info: #{e}"
                end

            end
        end
    end
end