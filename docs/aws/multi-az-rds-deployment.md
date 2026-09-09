# Multi-AZ RDS Deployment

## _#week_six - multi-az RDS deployment_
<br>

**_duration: 1 week_**

<br>

ForgTech company wanna test your ability to type clean code by deploying the structure of resources. This will help you to build a
good reputation.

The FrogTech Database team has determined to migrate the local PostgreSQL Database to AWS RDS. They have tested/discovered the RDS
functionality, Flaws, and parameter group configuration.

Therefore, You’re requested to provision a highly available multi-AZ PostgreSQL RDS instance (version >= 15).*, The RDS Structure should
be primary and standby without a read replica, besides creating a Jumper server (bastion host) to allow the Database team to connect to
The RDS and consider the following requirement specifications:

1. Allocate storage as 20 _i.e., avoiding high cost._
2. instance_calss as db.t3.micro _i.e. avoiding high cost._
3. Deny public access.
4. Both RDSs use the same Security group.
5. The security group allows inbound traffic for 5432 port from the bastion host only. And allows all outbound traffic.
6. Set skip_final_snapshot to true.

After provisioning the required Resources, check user accessibility utilizing the pgAdmin application or the psql client command line from
the bastion host.
<br><br>

Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Store the state file backend in S3.
3. Resources must have a common tag combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br><br>

**Bonus**

1. Build an Architecture diagram of the deployment resources.


2. Build a personal document consisting of what you learn with deep details and resources _i.e., this will assist you to get back and refresh_
    _your knowledge later_
3. Store the backend in HCP instead.
4. Apply & destroy using the plan file.
<br>

<br>

### **References:**

- [AWS RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [Best practices for Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_BestPractices.html)
- [Deploy basic RDS](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/22-deployBasicRDS)

