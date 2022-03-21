# Architecture

The infrastructure for the Ceros-ski game is constructed in two, interdependent
pieces that must be deployed separately.  The first is the ECR repository that
will store the built docker images for the ceros-ski container.  The second is
the ECS Cluster that will run those docker images.

The ECS Cluster is currently built to use an EC2 Autoscaling group that sits in
a private VPC in multiple availability zones.  It has a single service and a
single task definition. 

The ECS Cluster has a VPC, with both public and private subnets, the public
subnets holds the baiston host for trouble shooting and Nat gateway egress traffic from 
instances in the private subnets.

A load balancer was attached to the ECS service to distribute the load in a situation where 
there is high traffic to the node.js ski game.

I used a smaller base image for the Dockerfile in other to reduce the size of the image.

The ECR Repository is defined in `infrastructure/repositories`.

The ECS Cluster is defined in `infrastructure/environments`.
