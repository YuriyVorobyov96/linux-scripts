SYSNAM=$(hostname)
LOGDIR=${1:-/tmp/${SYSNAM}_logs}

mkdir -p $LOGDIR
cd ${LOGDIR} || exit -2

wevtutil el | while read ALOG
do
  ALOG="${ALOG%$'\r'}"
  echo "${ALOG}:"
  SAFNAM="${ALOG// /_}"
  SAFNAM="${SAFNAM//\//-}"
  wevtutil epl "$ALOG" "${SYSNAM}_${SAFNAM}.evtx"
done

tar -czvf ${SYSNAM}_logs.tgz *.evtx

