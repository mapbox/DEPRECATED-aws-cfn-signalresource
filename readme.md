aws-cfn-signalresource
------

Wrapper around aws cli's `cloudformation signal-resource` to handle retries & errors. Intended to be used to send success signals from instances in an Auto Scaling Group using UpdatePolicy.

### run from S3

```
$ curl -s https://s3.amazonaws.com/mapbox/apps/aws-cfn-signalresource/v0.2.0 | bash
```

### Install via NPM

- `npm install aws-cfn-signalresource`
- `npm link`
- `aws-cfn-signalresource`
