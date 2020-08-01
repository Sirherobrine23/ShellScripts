#Mountando todas as partições
mount -a
mount -o rw -t auto /system || mount -o rw -t auto /
mount -o rw -t auto /vendor 2>/dev/null

#System as Root
if [ -d /system/system ];then
  ui_print "Montande em um lugar diferente"
  mount --bind /system/system/ /system_root
fi

#System as Root
if [ -d /system_root ];then
    ui_print "System as root"
else
    ui_print "System is not System as Root"
fi

#System as Root
if [ -d /system_root ];then
    ui_print "A partição System já está montada"
elif [ -d /system/system ];then
    ui_print "partição System montada"
else
    ui_print "Partições não montadas, saindo ..."
    umount_all
    exit
fi

#Variaveis
if [ -e /system_root/build.prop ];then
    export SYSTEM=/system_root
    export AS_ROOT="A/B"
else
    export SYSTEM=/system
    export AS_ROOT="A Only"
fi
if [ -d $SYSTEM/product ];then
    export PROD="$SYSTEM/product"
    export PROD_DETECT="$SYSTEM"
elif [ -d /product ];then
    mount product
    export PROD="/product"
    export PROD_DETECT="Raiz do sistema"
else
    export PROD_DETECT="Não tem"
fi

#Listando
ui_print "Seu sistema é tipo: $AS_ROOT"
