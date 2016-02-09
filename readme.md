signalresource
------

Wrapper around aws cli's `cloudformation signal-resource` to handle retries & errors. Intended to be used to send success signals from instances in an Auto Scaling Group using UpdatePolicy.

##### run from S3

```
$ curl https://s3.amazonaws.com/mapbox/apps/signalresource/v0.0.1 | bash
```
