## Herramienta para verificar la version de XZ-Utils que estas usando
## debido a la vulneravilidad CVE-2024-3094
#
# Joan Bou - @jb_network Tiktok.
# 31 de Marzo de 2024.
clear
#####################################################################
check=`for xz_p in $(type -a xz | awk '{print $NF}' | uniq); do strings "$xz_p" | grep "xz (XZ Utils)" || echo "No se encontro $xz_p";done | sort -u | sed 's/xz (XZ Utils) //'`

echo "" 
echo ""
echo ""
echo "	[36;1m Herramienta para verificar XZ-Utils debido a [0;1m CVE-2024-3094"
echo ""
echo "     [33;1m  	      Joan Bou  ====== jb_network ====== 31 Marzo 2024"[0m
echo ""
echo ""
echo ""
echo ""
echo ""
echo "                      [32;1m La version que tienes de [0;1m$check"[0m
echo ""
if [[ "$check" == "5.6.0" || "$check" == "5.6.1" ]];
then
	echo "                [41;1m          ESTA VERSION ES VULNERABLE!        [0m"
else
	echo "    	          [42;30;1m       Esta version NO es vulnerable.    "[0m
fi

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "    [1m          Las versiones vulnerables son [31;1m 5.6.0 [0m y [31;1m 5.6.1 "
echo ""[0m
echo ""

