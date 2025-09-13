#cloud-config
users:
  - name: ${username}
    shell: /bin/bash
    sudo: ALL=(ALL) NOPASSWD:ALL

write_files:
  - path: /home/${username}/hello.txt
    content: |
      Hello World
    owner: ${username}:${username}
    permissions: '0644'
