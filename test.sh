virtualenv -p python3 venv && source venv/bin/activate

curl -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
  -H "Content-Type: application/json; charset=utf-8" \
  -d @test-text.json "https://texttospeech.googleapis.com/v1/text:synthesize" \
  > test-text.txt

python decode.py --input "test-text.txt" --output "test-text-audio.mp3"

python -m http.server 8080