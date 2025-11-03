echo off
cls
echo ******************************************* ERP IMPORTA WEB ******************************************
rem RMDIR v:\ERP_Importa\Win32 /S /Q
rem DEL v:\ERP_Importa\Win32\Debug\ERPImporta.exe /Q
rem DEL v:\ERP_Importa\ERPImporta.exe /Q
rem DEL v:\ERP_Importa\ERPImporta.rar /Q
rem DEL v:\ERP_Importa\*.dcu /Q
del C:\Sistemas_XE\Faturamento\Codigo_Fonte\FonteWeb.rar

echo ...Compactando os arquivos
c:
cd\Program Files\WinRAR
WinRar.exe a c:\FonteWEB.rar c:\Projetos_Web\Faturamento\Codigo_Fonte\FonteWeb.rar
echo ...

set filedatetime=%date% 
set filedatetime=c:\Projetos_WEB\Fonte_ERP_WEB-%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy c:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=\\server-cyber\Backup_Sistemas\Projetos_WEB\Fonte_ERP_WEB-%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=d:\Projetos_WEB\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=h:\Projetos_WEB\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=k:\Projetos_WEB\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=e:\meu drive\Backup_Sis\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=\\note-ded\Projetos_WEB\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"

set filedatetime=%date% 
set filedatetime=g:\meu drive\Backup_Sis\Fonte_ERP_WEB_%filedatetime:~0,2%-%filedatetime:~3,2%-%filedatetime:~6,4%.rar
echo ...Copiando arquivos para "%filedatetime%"
copy v:\FonteWEB.rar "%filedatetime%"
