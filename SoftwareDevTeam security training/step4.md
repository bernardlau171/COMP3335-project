Single sign-on solutions could be the alternative which may be more secure and convenient for the users

Introduction video of the SSO solutions: 
<iframe width="560" height="315" src=""https://www.youtube-nocookie.com/embed/mys7IhNKRTI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
.


Now, let's set Up Kubernetes SSO with SAML.

Install KOPS Kubernetes cluster running the following command:
`kops create cluster dev.automateops.co.uk \
  --node-count 1 \
  --zones us-west-2a \
  --node-size t2.medium \
  --master-size t2.medium \
  --master-zones us-west-2a,us-west-2b,us-west-2c \
  --networking calico \
  --topology private \
  --bastion="true" \
  --state=s3://dev.autotameops.co.uk-state-store \
  --kubernetes-version=1.14.6 --yes`

                 
