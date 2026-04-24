6  mv kepler/docs kepler/registros
    7  ls kepler 
    8  pwd
    9  ls
   10  cd evaluation/
   11  ls
   12  ls kepler/
   13  mv kepler/docs kepler/registros
   14  mkdir kepler/plantillas
   15  git add .
   16  git commit -m "Fix problema 2: archivos movidos y renombrados"
   17  history
   18  ls kepler
   19  ls kepler/registros
   20  mv kepler/sensores.log kepler/registros/
   21  ls kepler/registros
   22  mv kepler/registros/ajustes.old kepler/registros/ajustes.conf
   23  ls kepler/registros
   24  mv kepler/ajustes.old kepler/registros/ajustes.conf
   25  ls kepler/registros
   26  git add .
   27  git commit -m "Fix problema 2: archivos movidos y renombrados"
   28  history
   ls -l kepler/registros/sensores.log
   30  chmod 600 kepler/registros/sensores.log
   31  ls -l kepler/registros/sensores.log
   32  git add .
   33  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   34  history
   ls -l kepler/runner.sh
   36  chmod u+x kepler/runner.sh
   37  ls -l kepler/runner.sh
   38  chmod u+x kepler/runner.sh
   39  ls -l kepler/registros/ajustes.conf
   40  chmod o-w kepler/registros/ajustes.conf
   41  ls -l kepler/registros/ajustes.conf
   42  chmod u+x kepler/runner.sh
   43  chmod o-w kepler/registros/ajustes.conf
   44  ls -l kepler/runner.sh
   45  ls -l kepler/registros/ajustes.conf
   46  git add .
   47  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   48  history
   ls -l kepler/runner.sh
   50  chmod u+s kepler/runner.sh
   51  ls -l kepler/runner.sh
   52  git add .
   53  git commit -m "Fix problema 5: SUID activado en runner.sh"
   54  history
   ls -ld /tmp/kepler_zone
   56  mkdir -p /tmp/kepler_zone
   57  chmod +t /tmp/kepler_zone
   58  ls -ld /tmp/kepler_zone
   59  git add .
   60  git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   61  history