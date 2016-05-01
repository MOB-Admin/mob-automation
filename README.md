# MOB CI/CD repo

This is CI/CD repo for MOB project, that includes main server roles like:
- Ansible master
- MOB game server (screen aproach)

Written in yaml code for Ansible 2.0
This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Version
1.2.5

### Tech

* [Ansible] - continius delivery tool

And of course Dillinger itself is open source with a [public repository] [pubrep]
 on GitHub.

### Installation

First, checkout the automation repo:
```sh
$ git clone git@github.com:DmitryRendov/mob-automation.git mob-automation
$ cd mob-automation/ansible
```

Second, you need Ansible installed globally on ansible node, by the following playbook playing:

```sh
$ ansible-playbook -i ./inventory/dev ansbile-node-configure.yml --extra-vars "env=ansible" -vv
```

Third, you should install common packages and java on MOB server:
```sh
$ ansible-playbook -i ./inventory/dev common.yml --extra-vars "env=mob" -vv
$ ansible-playbook -i ./inventory/dev java1.8-oracle-debian.yml --extra-vars "env=mob" -vv
$ ansible-playbook -i ./inventory/dev mysql.yml --extra-vars "env=mob" -vv
```

Last step - MOB server provisioning and setup:
```sh
$ ansible-playbook -i ./inventory/dev mob-provision.yml --extra-vars "env=mob" -vv
```

### License
----

MIT

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job.)

   [pubrep]: <https://github.com/DmitryRendov/mob-automation>
   [Ansible]: <https://www.ansible.com/>
   [dockerlnk]: <https://www.docker.com/>

