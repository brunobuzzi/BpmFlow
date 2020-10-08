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
pid_isRunning () {
  isRunning=$(ps -p $1)
  if [ $? -eq 0 ]; then
   return 0
  else 
   return 1
  fi
}