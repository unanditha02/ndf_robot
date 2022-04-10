if [ -z $NDF_SOURCE_DIR ]; then echo 'Please source "ndf_env.sh" first'
else
wget -O ndf_bowl_data.tar.gz https://www.dropbox.com/s/hd0f6deodll3z47/ndf_test_bowl_data.tar.gz?dl=0
wget -O ndf_occ_data.tar.gz https://www.dropbox.com/s/ok4fb045z7v8cpp/ndf_occ_data.tar.gz?dl=0
mkdir -p $NDF_SOURCE_DIR/data/training_data
mv ndf_*_data.tar.gz $NDF_SOURCE_DIR/data/training_data
cd $NDF_SOURCE_DIR/data/training_data
tar -xzf ndf_bowl_data.tar.gz
tar -xzf ndf_occ_data.tar.gz
rm ndf_*_data.tar.gz
echo "Training data NDF bowls copied to $NDF_SOURCE_DIR/data/training_data"
fi
