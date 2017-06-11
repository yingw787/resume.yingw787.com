GRAVATAR_OPTION=--no-gravatar make

current_time = $(date)

git add .
git commit -m "Resume update: $current_time"
git push origin master

aws s3 rm s3://resume.yingw787.com --recursive --profile s3_personal
aws s3 cp resume.pdf s3://resume.yingw787.com --profile s3_personal
