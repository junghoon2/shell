# login, namespace, group, user 생성 순으로 

IP="172.17.16.160"

dctl -s $IP login -u admin -p Diamanti1! 2>/dev/null
sleep 5

/usr/local/bin/kubectl get namespace

for i in {3..9}; do 
  /usr/local/bin/kubectl create namespace test0$i
  sleep 1  
done

/usr/local/bin/kubectl get namespace

/usr/local/bin/dctl user group list

for i in {3..9}; do
  /usr/local/bin/dctl user group create test0$i-ns --role-list container-edit/test0$i,volume-edit
  sleep 1
done

/usr/local/bin/dctl user group list

/usr/local/bin/dctl user list

for i in {3..9}; do
  /usr/local/bin/dctl user create test0$i --local-auth --password Diamanti1! --group-list test0$i-ns
  sleep 1
done

/usr/local/bin/dctl user list
