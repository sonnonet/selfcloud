# make struct for self cloud

source BASE_PATH.sh

mkdir $BASE_PATH/apps_run_script
if [ $? -ne 0 ]; then 
  echo "something wrong" && exit 1
fi
echo "next step, good"

mkdir $BASE_PATH/storage_run
if [ $? -ne 0 ]; then 
  echo "something wrong" && exit 1
fi
echo "next step, good"

echo "end of success"

