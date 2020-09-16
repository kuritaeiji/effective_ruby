module Defaults
  NETWORKS = ['192.168.1', '192.168.2'].map(&:freeze).freeze

  NUMBER = 1.freeze
end

def purge_unreachable (networks = Defaults::NETWORKS)
  networks.delete_if do |net|
    !ping(net + '.1')
  end
end

def add_host_addresses (hosts, networks = Defaults::NETWORKS)
  hosts.each { |host| networks.push(host) }
end

Defaults.freeze