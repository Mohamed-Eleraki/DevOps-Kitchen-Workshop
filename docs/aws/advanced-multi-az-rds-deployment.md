# Advanced Multi-AZ RDS Deployment

## _#week_seven - Advanced multi-az RDS deployment_
<br> 

**_duration: 1 week_**
<br><br>

ForgTech company wanna test your ability to type down a clean code by deploying the structure of resources. This will help you to build a
good reputation.
The FrogTech Database team has determined to migrate the local PostgreSQL Database to AWS RDS. They have tested/discovered the RDS
functionality, Flaws, and parameter group configuration.
Therefore, You’re requested to provision an advanced Highly available Multi-az instance PostgreSQL RDS version >=15.*, The RDS
Structure should be primary and standby without a read replica, besides creating a Jumper server “bastion host") to allow the Database
team to connect to the RDS, and consider the following requirement specifications:

1. Allocate storage as 20 _i.e. avoiding high cost._
2. instance_calss as db.t3.micro _i.e. avoiding high cost._
3. Deny public access.
4. Both RDSs use the same Security group.
5. Security Group allows inbound traffic for 5432 port from the bastion host only. And allows all outbound traffic.
6. Set skip_final_snapshot to true.
7. Manage the master user password using Secret Manager.
8. Deny major changes and updates on the database.
9. Allow minor changes and updates on the database.
10. Set up backup retention period to 7 days.
11. Copy tags to snapshots.
12. Delete auto backup.
13. Encrypt Storage at rest.
14. Enable Blue/Green deployment.

After provisioning the required Resources, check user accessibility utilizing the pgAdmin application or Psql client command line from
the bastion host.
<br><br>


Use IaC Terraform to build all resources and consider the below requirements specifications.

1. Resources must be created in the us-east-1 region.
2. Store the state file backend in S3.


3. Resources must have a common tag combination as below:
4. Common tags:
    - Key: “Environment”, Value: “terraformChamps”
    - Key: “Owner”, Value: <“Your_first_name“>
<br>

<br>

**Bonus**

1. Build an Architecture diagram of the deployment resources.
2. Build a personal document consisting of what you learn with deep details and resources _i.e. this will assist you to get back and refresh_
    _your knowledge later_
3. Store the backend in HCP instead.
4. Apply & destroy using the plan file.
5. Craft multiple workspaces _i.e. local or on the HCP platform._
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

