#!/bin/bash

opath=$2
npath=$3

init(){ 
   echo "请输入md路径文件名"
   read path
   if [ -s $path ]
   then
        echo "文件已经存在，程序退出！"
        exit 0
   fi
   echo "请输入标题名称"
   read title
   echo "请输入分类"
   read category
   echo "请输入二级分类(没有的话可直接enter)"
   read subcategory
   echo "请输入tag"
   read tag
   subContent=""
   currentTime=`date +%Y-%m-%d" "%H:%M:%S`
   if [ $subcategory ]
   then
        subContent="\n- $subcategory"
    fi
   echo -e "<!-- title: $title\ndate: $currentTime\ncategories:\n- $category$subContent\ntags:\n- $tag -->" > $path
}

insert(){

   if [ ! -s $opath ]
   then
        echo "不存在已经存在，程序退出！"
        exit 0
   fi

   echo "请输入标题名称"
   read title
   echo "请输入分类"
   read category
   echo "请输入二级分类(没有的话可直接enter)"
   read subcategory
   echo "请输入tag"
   read tag
   subContent=""
   currentTime=`date +%Y-%m-%d" "%H:%M:%S`
   

    sed -i "" "1i\ 
    <!--
    " $opath 

    sed -i "" "2i\ 
    title: $title
    " $opath 


    sed -i "" "3i\ 
    date: $currentTime 
    " $opath 
    
    
    sed -i "" "4i\ 
    categories:
    " $opath 
    
    sed -i "" "5i\ 
    - $category
    " $opath 
    
    if [ $subcategory ]
    then 
        sed -i "" "6i\ 
        - $subcategory
        " $opath

        sed -i "" "7i\ 
        tags:
        " $opath

        sed -i "" "8i\ 
        - $tag
        " $opath

        sed -i "" "9i\ 
        -->
        " $opath

        sed -i "" "10i\ 
        
        " $opath
    else
        sed -i "" "6i\ 
        tags:
        " $opath

        sed -i "" "7i\ 
        - $tag
        " $opath

        sed -i "" "8i\ 
        -->
        " $opath

        sed -i "" "9i\ 
        
        " $opath
    fi

    



    echo -e "<!-- title: $title\ndate: $currentTime\ncategories:\n- $category$subContent\ntags:\n- $tag -->"

}

    

build(){
    echo "build"
    echo $opath
    echo $npath
    sed -e "1,5s/<!--/---/" -e "6,12s/-->/---/" $opath > $npath
}

if [ $1 == 'start' ]
then 
    echo -e "ab\nab"
    start
elif [ $1 == 'build' ]
then
    build
elif [ $1 == 'insert' ]
then
    insert
fi