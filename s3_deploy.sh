current_time=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

git add .
git commit -m "Resume update: $current_time"
git push origin master

aws s3 rm s3://resume.yingw787.com --recursive --profile ying.wang
aws s3 cp resume.pdf s3://resume.yingw787.com --profile ying.wang
