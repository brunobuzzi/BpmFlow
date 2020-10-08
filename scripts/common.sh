#common functions

#just print info
info() {
  echo 1>&2
  CURRENT_TIME=`date`
  echo ${PROGRAM}[INFO]: $* [$CURRENT_TIME] 1>&2
  echo 1>&2
}
#denote an error
error() {
  echo 1>&2
  echo [ERROR]: $* 
  echo 1>&2
}
#answer 0 if the argument pid exist, answer 1 otherwise
pid_isRunning () {
  isRunning=$(ps -p $1)
  if [ $? -eq 0 ]; then
   return 0
  else 
   return 1
  fi
}