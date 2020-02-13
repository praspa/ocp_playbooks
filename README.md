
# OCP Playbooks

A repo of my ansible playbooks to help in day to day OCP 3.x tasks. 

# OCP 3.11 Image Pre-Pull

Playbook to pull 3.11 images prior to 3.10->3.11 upgrade.

* update `roles/prepull-3-11-images/defaults/main.yml`
* update vars `rh_user` and `rh_password` to customer portal credentials

```
$ ansible-playbook -i <ocp inventory> pre_upgrade_3_11.yaml
```

# OCP 3.11 Pre-upgrade tasks

Utility playbook to configure 3.11 repos and update openshift-ansible on a master prior to 3.11 upgrade.

Assumes an existing HA'd OCP 3.10 cluster running install from 0th master node.


```
$ ansible-playbook -i <ocp inventory> update-repos-3-11.yaml
```

