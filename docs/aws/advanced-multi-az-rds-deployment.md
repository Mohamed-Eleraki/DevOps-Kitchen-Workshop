# Advanced Multi-az RDS Deployment

## _#week_seven - Advanced multi-az RDS deployment_
<br> 

**_duration: 1 week_**
<br><br>

ForgTech company wanna test your ability to type down a clean code by Deploying the structure of resources. This will help you to build a
good reputation.
The FrogTech Database team determined to migrate the local PostgreSQL Database to AWS RDS, They have tested/discovered the RDS
functionality, Flaws, and parameter groups configuration.
Therefore, You’re requested to provision an advanced Highly available Multi-az instance PostgreSQL RDS version >=15.*, The RDS
Structure should be as primary and standby without read replica, besides creating a Jumper server “bastion host“ to allow the Database
team to connect to The RDS. and consider the following requirement specifications:

1. allocate storage as 20 _i.e. avoiding high cost._
2. instance_calss as db.t3.micro _i.e. avoiding high cost._
3. Deny public access.
4. Both RDSs use the same Security group.
5. Security Group allows inbound traffic for 5432 port from the bastion host only. and allows all outbound traffic.
6. Set skip_final_snapshot as true.
7. Manage master user password using secret manager.
8. Deny major changes and updates on the database.
9. Allow minor changes and updates on the database.
10. Set up backup retention period to 7 days.
11. Copy tags to snapshots.
12. Delete auto backup.
13. Encrypt Storage at rest.
14. enabling Blue/Green deployment.

After provisioning the required Resources, Check the user accessibility utilizing the pgAdmin application or Psql client command line from
the bastion host.
<br><br>


Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created at the us-east-1 region.
2. Store state file backend into S3.


3. Resources must have common tags combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br>

<br>

**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you to get back and refresh_
    _your knowledge later_
3. Store the backend into HCP instead.
4. Apply & destroy using planfile.
5. Craft multiple workspaces _i.e. local Or on The HCP platform._
<br>

<br>

### **References:**

- [AWS RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [Best practices for Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_BestPractices.html)
- [Configuring an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_RDS_Configuring.html)
- [Managing an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_RDS_Managing.html)
- [Configuring and managing a Multi-AZ deployment](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html)
- [Using Amazon RDS Extended Support](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html)
- [Using Amazon RDS Blue/Green Deployments for database updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
- [Backing up, restoring, and exporting data](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_CommonTasks.BackupRestore.html)
- [Monitoring metrics in an Amazon RDS instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Monitoring.html)
- [Monitoring events, logs, and streams in an Amazon RDS DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Monitor_Logs_Events.html)
- [Using Amazon RDS Proxy](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy.html)
- [Deploy an advanced RDS](https://github.com/Mohamed-Eleraki/terraform/tree/main/AWS_Demo/24-advancedRDSconfigs)

