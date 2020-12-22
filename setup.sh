sudo apt-get update
sudo apt-get install virtualenv -y
gcloud iam service-accounts create cloud-to-speech-demo
gcloud config get-value project 2> /dev/null
PROJECT=$(gcloud config get-value core/project 2> /dev/null)
gcloud iam service-accounts keys create cloud-to-speech-demo.json --iam-account cloud-to-speech-demo@$PROJECT.iam.gserviceaccount.com
export GOOGLE_APPLICATION_CREDENTIALS=cloud-to-speech-demo.json