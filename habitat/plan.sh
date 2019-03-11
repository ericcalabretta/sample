pkg_name=sample
pkg_origin=eric
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/${pkg_name}.war"
pkg_shasum="89b33caa5bf4cfd235f060c396cb1a5acb2734a1366db325676f48c5f5ed92e5"
#sample app needs tomcate and java to run, curl is needed for the health-check hook
pkg_deps=(core/tomcat8 core/jre8 core/cacerts core/curl)
#user needs access to write to disk
pkg_svc_user="root"

#skip unpack step - not needed 
do_unpack() {
    return 0
}
#skip unpack step - not building but downloading built war file
do_build() {
    return 0
}

#move war from default path habitat places downloads to the package's directory 
#the ${pkg_name} variable makes this plan easier to copy for another java/tomcat app 
#the ${PREFIX} variable will look something like this on disk /hab/pkgs/eric/sample/0.1.0/20190309013632
do_install() {
    cp ${HAB_CACHE_SRC_PATH}/${pkg_name}.war ${PREFIX}/
}