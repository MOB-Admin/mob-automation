# MOB CI/CD repo

This is CI/CD repo for MOB project, that includes main server roles like:
- Ansible master
- Jenkins + Apache Archiva server
- MOB application server

Written in yaml code for Ansible 2.0
This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Version
1.2.4

### Tech

* [Ansible] - continius delivery tool

And of course Dillinger itself is open source with a [public repository] [pubrep]
 on GitHub.

### Installation

You need Ansible installed globally:

```sh
$ pip install ansible
```

```sh
$ git clone git@github.com:DmitryRendov/aem-demo.git aem-demo
$ cd ansible
$ ansible-playbook -i ./inventory/dev ansbile-node-configure.yml --extra-vars "env=ansible" -vv
$ ansible-playbook -i ./inventory/dev jenkins-configure.yml --extra-vars "env=ci" -vv
$ ansible-playbook -i ./inventory/dev apache-archiva.yml --extra-vars "env=ci" -vv
```

### Todos

 - Setup full CD pipeline
 - Force Docker using
 - Add AWS enviroments

License
----

MIT

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job.)

   [pubrep]: <https://github.com/DmitryRendov/aem-demo>
   [Ansible]: <https://www.ansible.com/>


A

