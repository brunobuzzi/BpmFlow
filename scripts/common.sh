#common functions

info() {
  echo 1>&2
  CURRENT_TIME=`date`
  echo ${PROGRAM}[INFO]: $* [$CURRENT_TIME] 1>&2
  echo 1>&2
}
error() {
  echo 1>&2
  echo [ERROR]: $* 
  echo 1>&2
}