# 원격지로 file copy
# ssh -p 포트 별도 사용, -e 환경 변수 
# -a 파일 보전, --progress 

rsync -avr --progress -e 'ssh -p 10022' /home/spkr/12.k8s_code/61.PJT/01.MariaDB-DZ/ac1/ diamanti@adzdia01:/home/diamanti/k8s-code  