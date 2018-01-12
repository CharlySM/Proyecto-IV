

Vagrant.configure("2") do |config|

  config.vm.box = "xcoo/trusty64"
  #config.vm.network "public_network", bridge: "eth0: Wi-Fi (AirPort)", adapter: "2", ip: "192.168.77.20"
  #config.vm.network "public_network", auto_config: false, :bridge => "eth0", ip: "#{IP}"
  #config.ssh.host "#{HOSTNAME}"
  #config.ssh.username "vagrant"
#  config.vm.network "public_network", ip: "192.168.77.20", guest: 80, host: 8000
  #config.vm.network "private_network", ip: "192.168.0.23", guest: 80, host:8000
  #config.ssh.password=File.expand_path('~/.vagrant.d/insecure_private_key')
#  config.vm.network :forwarded_port, guest: 80, host: 8000
#  config.ssh.username = 'vagrant'
#  config.ssh.password = 'vagrant'
#  config.ssh.insert_key = 'true'
config.vm.define "liga" do |host|
    host.vm.hostname = "liga"
end
  config.vm.provider 'aws' do |aws, override|
   # Read AWS authentication information from environment variables
    aws.access_key_id = 'access_key_id'
    aws.secret_access_key = 'secret_access_key'

   # Specify SSH keypair to use
   aws.keypair_name = 'key'

   # Specify region, AMI ID, and security group(s)
    aws.region = 'eu-central-1'
    aws.ami = 'ami-13b8337c'
    aws.security_groups = 'migrupo2'
    aws.instance_type= 't2.micro'
   # Specify username and private key path
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = 'key.pem'
  end

  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./provision/ansible.yml"
    ansible.verbose        = true
    #ansible.extra_vars =
    #    {
    #        machine: "main",
    #        public_ip: IP,
    #        public_mask: NETWORK_MASK,
    #        public_gateway: NETWORK_GATEWAY,
    #    }
  end

end
