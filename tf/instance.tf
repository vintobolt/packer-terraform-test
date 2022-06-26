resource "google_compute_instance" "default" {
  name         = "instance-for-tests"
  machine_type = "n1-standard-1"
  zone         = "europe-central2-a"


  boot_disk {
    initialize_params {
      image = "projects/chrome-energy-349619/global/images/debian10-withnginx-user1-v1"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
      //ssh-keys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVdcKuxLldS15xNTpD8j8nypckNWSckE8xG/sgnkn73sAypfnvE1FlAoDH6N6ELXNN4wb1iRHpkwGzWlQCQYR5IdW6ppdlYhD7MiZxqpgib1P9TAiIzOYJGe/ZZRTiDWwtAsURD0mwea7URCKBc57KcQgKtLnR67FsaDv9J/m7Huh/6pP+dZQJn9/tOZh2MqPGGvJmjHVbTD0Tlg0ozEbC+chj0AfpcPExseDJ36dPu6gO6J0fT2CT3eUeNRsir/nlwgQl6Ebo/cUJ/tHB6eIFmhv+QNcl4c0aDZRZLi3J3l9+3tPj/N2cukmhC4YIFWLty2xytdGhIn2rrSx9Svwj user1"
      ssh-keys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIi1afXMWdYRlhJZgLLXtwQzJ3AX8DrOgrlEaHxbYkaArJ2n6VTHdNiFrrDJM4tmnEfgPUmUmyuuQNJ2LGlDFfyW660KNnr0REmmYwGqY8TsujAbhKQeDv/Y6nq3tRSZc7t2Fi5GvB2+hS/7TK5J2rzyln9Pb4oiW6mlyPWsVIeT947Xp1J0Uj/wEj4KTvT1LmFbSMYrv2TPk8CLv9ibIeM9/UpSaqg0I0NEUSUOGMRs/yOeTSsVPRB7Qx3nhNJXHbqMfUEWLnYH38zOJaXwATUb5JCVW4OWxJL2X0W0cz7IrOO93c7vp14ZDERUaz0wCeDGUWNu+hXLNNiNLFZEF+Li927It/+28ftD4GY5KqaO4qdj/3nM/mvrolMJiXxryP84sYKpGf9hN5ls9VItUhNLoULjb8qsYMWXz70lpAww1+Mb/VDKtB0uILArtBfjHLEMu/1ziaqYzXx8WW1FlITq9KsMdsTo9PRUuQI8G+7ZeLY1FNLJwJm8dOs+zosl8= vintobolt@@MacBook-Air-Olexandr.local"
  }

}