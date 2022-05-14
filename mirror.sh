_start () {
    local zippath
    zippath="Testapp.zip"
    echo "••• DOWNLOADING v3 •••"
    wget -q $(_repo_zip) -O "$zippath"
    ZIP_PATH=$(zipinfo -1 "$zippath" | grep -v "/.");
    unzip -qq "$zippath"
    rm -rf "$zippath"
    _run_deploy
    cd $ZIP_PATH
    _deploy_repo
    python3 ../setup/updater.py ../requirements.txt requirements.txt
    chmod -R 755 bin

    echo "••• DOWNLOAD COMPLETE •••"

    python3 $PYTHON_FILE
}
