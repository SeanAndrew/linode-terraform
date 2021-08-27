provider "linode" {
  token = "linode-api-key"
}

resource "linode_instance" "nextcloud-instance" {
    label = "nextcloud"
    image = "linode/debian11"
    region = "us-east"
    type = "g6-standard-2"
    authorized_keys = ["ssh-rsa AAAA...."]
    root_pass = "password"
    stackscript_id = 888417
    swap_size = 256
    private_ip = true
}
