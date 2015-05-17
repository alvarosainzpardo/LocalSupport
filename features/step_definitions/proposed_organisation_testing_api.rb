require_relative 'map_testing_api.rb'

def unsaved_proposed_organisation(associated_user = nil)
  proposed_org = ProposedOrganisation.new({name: "Friendly Chariity", description: "We are friendly!", 
    email: "sample@sample.org", address: "30 Pinner Road", donation_info: "https://www.donate.com",
    postcode: 'HA1 4JD'}
  )
  stub_request_with_address("30 Pinner Road")
  proposed_org.users << associated_user
  proposed_org
end

