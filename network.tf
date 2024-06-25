resource "openstack_networking_network_v2" "NET1" {
  name           = "NET1"
  admin_state_up = "true"
}
resource "openstack_networking_network_v2" "NET2" {
  name           = "NET2"
  admin_state_up = "true"
}


resource "openstack_networking_subnet_v2" "SUBNET1"{

   network_id = openstack_networking_network_v2.NET1.id
   cidr       = "192.168.1.0/24"
   
}

resource "openstack_networking_subnet_v2" "SUBNET2"{

   network_id = openstack_networking_network_v2.NET2.id
   cidr       = "192.168.2.0/24"
   
}
  
#resource "openstack_networking_floatingip_v2" "fip" {
#  pool = "public"
#}
