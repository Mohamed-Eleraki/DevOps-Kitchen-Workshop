# GCP Cloud Run - Master Container deployment
### _week_twentytwo - GCP CloudRun_

_**duration: 1 week**_

<br>

ForgTech company wanna test your ability to deliver their requirements utilizing Google
CloudRun over Google CLI.
This will help you build a good reputation. The purpose of this task is to build and deploy a
general Nginx container. Then apply some advanced configurations like Blue-Green deployment
-e.g. deploy multiple revisions and split traffic, ensure new version stability. The FrogTech Cloud Team requests building a Docker image, then deploying it utilizing Google
Container Registry and Cloud Run while using the gcloud CLI. The exact implementation is as follows:

1. Build an Nginx Docker image and pass a custom `index.html` file.
2. Push the Docker Image to Google Container Registry using the gcloud CLI.
3. Deploy The Image to Cloud Run over the gcloud CLI, then test accessibility.
4. After Testing, adjust the index.html file and push a new version of the Docker image to the registry.
5. Deploy a new revision of the same deployment, then test accessibility.
6. Split traffic between two revisions as follows, and ensure the traffic splitting by accessing
multiple times:
a. Old revision: 70%
b. New revision: 30%
7. Set the traffic to 100% of the new revision.
8. Submit scaling for 3 containers.

<br>

## References:
- [GCP Cloud Run In Practice](https://eraki.hashnode.dev/gcp-cloud-run-in-practice#heading-overview)
