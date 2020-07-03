ENABLE_UART = "1"

do_deploy_append_raspberrypi3() {
    echo "dtparam=audio=on" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
}
