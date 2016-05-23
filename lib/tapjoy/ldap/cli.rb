require_relative 'cli/user'

module Tapjoy
  module LDAP
    module CLI
      class << self
        def commands
          subcommand = %w(user group key audit)
          Trollop::options do
            usage '[SUB_COMMAND] [options]'
            synopsis "\nTool to manage LDAP resources.\nAvailable subcommands are: #{subcommand}"
            version "#{File.basename($PROGRAM_NAME)} #{Tapjoy::LDAP::VERSION} \u00A9 2015 Tapjoy, Inc."
            stop_on subcommand
          end

          cmd = ARGV.shift # get the subcommand
          case cmd
          when 'user'
            Tapjoy::LDAP::CLI::User.commands
          when 'group'
            Tapjoy::LDAP::Group.commands
          when 'key'
            Tapjoy::LDAP::Key.commands
          when 'audit'
            Tapjoy::LDAP::Audit.commands
          else
            raise Tapjoy::LDAP::InvalidArgument
          end
        end
      end
    end
  end
end