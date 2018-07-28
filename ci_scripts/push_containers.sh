export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

cd xos/synchronizer
docker build -f Dockerfile.synchronizer -t cachengo/internetemulator-synchronizer-$AARCH:$IMAGE_TAG .
docker push cachengo/internetemulator-synchronizer-$AARCH:$IMAGE_TAG
