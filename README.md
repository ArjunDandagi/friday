
# FRIDAY - Assignment 

## Infra-s3

The infrastructure is written in Terraform. 
advantage of using terraform vs cloudformation:
1. open-source tooling and 
2. Great readability of infra as code
3. greater flexibility to move to different cloud platform
4. no vendor lock-in (to some extent :p)
5. can extend for custom use

Best-practices: 
1. separating main.tf variables and outputs to differentiate scope
2. variabalize everything that needs to take as form of input and feed it into resource creations 
3. using "This" as a object oriented approach to refer outputs 
4. import resource groups as modules to create reusable iac 
5. using dynamic resources to create or pass values optionally
6. use of null to vomit the conditional values/fields
### usage:
 mentioned in README of `infra-s3` folder

## Infra-k8s
helm Charts helps in templating any application to create the kube files 

1. version of app as releases
2. chart release naming
3. using pull policy as IfNotPresent to save network cost of pulling a same resource
4. using github commit hash as docker tag to achieve point 3 , properly
5. using minimum 2-3 pods 
6. separate service account to use for app level separation based on SA
7. ingress to provider routes to service
8. resource limits to mention the requirements 
9. Healthcheck of app with liveness , readiness , startup probes

### usage:
Mentioned in README for `infra-k8s`
