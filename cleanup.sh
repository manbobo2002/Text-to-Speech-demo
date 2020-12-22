PROJECT=$(gcloud config get-value core/project 2> /dev/null)
gcloud iam service-accounts delete cloud-to-speech-demo@$PROJECT.iam.gserviceaccount.com -q