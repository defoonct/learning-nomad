# Learning Hashicorp Nomad

##### Some useful commands

```shell
$ nomad job stop -purge <job> # Stop and purge a given job
$ nomad system gc             # Initializes a garbage collection of jobs, evaluations, allocations, and nodes.
$ sudo nomad agent -dev
$ sudo nomad agent --help
$ nomad agent --help
$ sudo nomad agent -bind 0.0.0.0 -log-level INFO -dev
$ sudo nomad agent -bind 0.0.0.0 -log-level WARN -dev
$ sudo nomad agent -bind 0.0.0.0 -log-json -log-level WARN -dev
```
