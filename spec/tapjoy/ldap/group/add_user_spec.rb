require_relative '../group'
RSpec.describe 'Tapjoy::LDAP::CLI::Group::AddUser.add_user' do
  include_context 'group'
  let(:operations) {[[:add, :memberUid, 'test.user']]}

  it 'adds a user to a group' do
    ARGV << %w(add_user -g testgroup -u test.user); ARGV.flatten!
    expect(fake_ldap).to receive(:modify).with(distinguished_name, operations)

    Tapjoy::LDAP::CLI::Group.commands
  end
end
