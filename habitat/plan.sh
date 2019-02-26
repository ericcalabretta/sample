pkg_name=sample
pkg_origin=eric
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/${pkg_name}.war"
pkg_shasum="89b33caa5bf4cfd235f060c396cb1a5acb2734a1366db325676f48c5f5ed92e5"
pkg_deps=(core/tomcat8 core/jre8 core/cacerts)
pkg_svc_user="root"

do_unpack() {
    return 0
}

do_build() {
    return 0
}

do_install() {
    cp ${HAB_CACHE_SRC_PATH}/${pkg_name}.war ${PREFIX}/
}