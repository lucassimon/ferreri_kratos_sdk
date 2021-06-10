module FerreriKratosSdk
    module Services        
        class KratosServices
            def initialize(client)
                # instance of the follow clients 
                # - FerreriKratosSdk::Clients::ClientRest
                # - FerreriKratosSdk::Clients::ClientOry
                @client = client
            end

            
            def create_identity(body)
                @client.create_identity(body)
            end

            
            def register(body)
                # TODO: Raise exceptions
                begin
                    @client.register(body)
                rescue StandardError => e
                    raise e
                end
            end

            def verification()
                @client.verification()
            end
        end
    end
end