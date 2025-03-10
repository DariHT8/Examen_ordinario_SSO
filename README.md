# Exámen Ordinario (Seguridad en Sistemas Operativos)

_Este fue un proyecto realizado para la materia de "Seguridad en Sistemas Operativos" con categoría de "Exámen Ordinario" o "Exámen Final"._

## Contenido 🚀

_Es un programa basado en shell, que funciona únicamente para distribuciones **CentOS** o **Ubuntu**._

### Funcionamiento 📋

_Este programa valida que se este utilizando una distribución **CentOS** o **Ubuntu**, y se almacena este dato en una variable para utilizarse después._

```
os=("CentOS") / os=("Ubuntu")
```

_Posteriormente dependiendo de su distribución, hace una búsqueda de los paquetes con los que cuenta instalados y busca especificamente uno de ellos **"clamav"**._

#### CentOS
```
av=$(yum list installed)
  if echo "$av" | grep clamav 
```

#### Ubuntu
```
av=$(apt list --installed)
  if echo "$av" | grep clamav
```

_Si no lo encuentra, hace su respectiva instalación y más aparte actualiza todo el sistema._

#### CentOS
```
sudo yum -y install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd
 sudo yum -y update
```

#### Ubuntu
```
sudo apt-get install clamav clamav-daemon clamav-base/bionic-updates libclamav9/bionic-updates
sudo apt upgrade
```

### Sobre "Clamav" 🔧

_**ClamAV** es un motor antivirus de código abierto para detectar troyanos, virus, malware y otras amenazas maliciosas. Es un tipo de estándar para el software de escaneo de puertas de enlace de correo electrónico, para el área de código abierto._

## Instrucciones de uso ⚙️

_Este programa es un tipo de ejecutable, ya que solo se instala y se ejecuta desde terminal utilizando el siguiente comando:_

```
bash Dariela_Hurtado-hardening.sh
```

## Autores ✒️

_Este programa fue desarrollado por:_

* **Dariela Hurtado Torres** - *Trabajo Inicial* - [DariHT8]([https://github.com/DariHT8])
