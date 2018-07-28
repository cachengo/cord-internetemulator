export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/internetemulator-synchronizer:$IMAGE_TAG cachengo/internetemulator-synchronizer-x86_64:$IMAGE_TAG cachengo/internetemulator-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/internetemulator-synchronizer:$IMAGE_TAG
