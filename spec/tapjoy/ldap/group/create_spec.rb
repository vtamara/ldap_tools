require_relative '../../../spec_helper'
require_relative '../group'
describe 'Tapjoy::LDAP::Group::Create.create' do
  include_context 'group'

  let!(:ldap_attr) {
    {cn: "testgroup", objectclass: %w(top posixGroup), gidnumber: 10001}
  }

  it 'creates a group' do
    ARGV << %w(create -n testgroup); ARGV.flatten!
    expect(fake_ldap).to receive(:add).with(dn, ldap_attr)
    Tapjoy::LDAP::Group.commands
  end
end
