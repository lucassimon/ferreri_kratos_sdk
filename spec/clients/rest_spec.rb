
RSpec.describe FerreriKratosSdk::Clients::ClientRest do
    it "check instance of ClientRest" do
        expect(true).to eq(true)
    end
end

RSpec.describe FerreriKratosSdk::Clients::ClientRest::create_identity do
    it "should return a json response when the post is success" do
        # Mock the self.class.post('/identities', options) to return:
        # response.body = {:id=>"95f2953e-41e2-40f2-8c68-70f9a3c90130", :schema_id=>"default", :schema_url=>"http://127.0.0.1:4433/schemas/default", :traits=>{:email=>"teste15@gmail.com"}, :verifiable_addresses=>[{:id=>"5d3185b8-b2fd-4605-a43e-75a8464a21e5", :value=>"teste15@gmail.com", :verified=>false, :via=>"email", :status=>"pending", :verified_at=>nil}], :recovery_addresses=>[{:id=>"1b7b1f70-1aec-48c2-93fe-d8b75ae61fb0", :value=>"teste15@gmail.com", :via=>"email"}]}
        # response.code = 201 

        # call

        # assert
        expect(true).to eq(true)
    end

    it "should raise an exeption when status code is not 201" do
        # Mock the self.class.post('/identities', options) to return:
        # response.body = {'error': {'message': 'some message'} }
        # response.code = 400 

        # call

        # assert
        expect(true).to eq(true)
    end
end

RSpec.describe FerreriKratosSdk::Clients::ClientRest::json_response do
    it "should return a json" do
        # TODO: Refactor and change this test to as_json_spec.rb
        # given a response.body from the kratos

        # call

        # assert
        expect(true).to eq(true)
    end
end

RSpec.describe FerreriKratosSdk::Clients::ClientRest::raise_exception do
    it "should raise HTTPRequestBadRequest when the status code is 400" do

        # Mock the response object on parameter
        # response.body = {"error"=>{"code"=>500, "status"=>"Internal Server Error", "message"=>"json: unknown field \"email\""}}
        # response.code = 400 

        # call

        # assert
        expect(true).to eq(true)
    end

    it "should raise HTTPRequestNotFound when the status code is 404" do
        # Mock the response object on parameter
        # response.body = {'error': {'message': 'some message'} }
        # response.code = 404 

        # call

        # assert
        expect(true).to eq(true)
    end

    it "should raise HTTPRequestConflict when the status code is 409" do
        # Mock the response object on parameter
        # response.body = {"error" => { "code"=>409, "status"=>"Conflict", "message"=> "sqlite create: UNIQUE constraint failed: identity_verifiable_addresses.nid, identity_verifiable_addresses.via, identity_verifiable_addresses.value: Unable to insert or update resource because a resource with that value exists already"}}
        # response.code = 409 

        # call

        # assert
        expect(true).to eq(true)
    end

    it "should raise HTTPRequestServerError when the status code is 500" do
        # Mock the response object on parameter
        # response.body = {'error': {'message': 'some message'} }
        # response.code = 500 

        # call

        # assert
        expect(true).to eq(true)
    end

    it "should raise generic error HTTPRequestError" do
        # Mock the response object on parameter
        # response.body = {"error"=>{"code"=>500, "status"=>"Internal Server Error", "message"=>"json: unknown field \"schema\""}}
        # response.code = 502

        # call

        # assert
        expect(true).to eq(true)
    end
end