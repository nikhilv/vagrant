module VagrantPlugins
  module Docker
    module Cap
      module Debian
        module DockerConfigureVagrantUser
          def self.docker_configure_vagrant_user(machine)
            machine.communicate.sudo("usermod -a -G docker #{machine.config.ssh.username || "vagrant"}")
          end
        end
      end
    end
  end
end
