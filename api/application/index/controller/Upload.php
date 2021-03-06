<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
header('Access-Control-Allow-Credentials:true');  
// http://139.196.72.67/api/public/index.php/index/destination/index

class Upload
{
    public function info() 
    {
            // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('image');
        
        // 移动到框架应用根目录/public/uploads/ 目录下
        if($file){
            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                // 成功上传后 获取上传信息
                // 输出 jpg
                // echo $info->getExtension();
                // // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                echo $info->getSaveName();
                // 输出 42a79759f284b767dfcb2a0197904287.jpg
                // echo $info->getFilename(); 
            }else{
                // 上传失败获取错误信息
                echo $file->getError();
            }
        }
    }

    public function authorImg() 
    {
            // 获取表单上传文件 例如上传了001.jpg
            $file = request()->file('upload');
        
            // 移动到框架应用根目录/public/uploads/ 目录下
            if($file){
                $info = $file->move(ROOT_PATH . 'public' . DS . 'authorImg');
                if($info){
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    // echo $info->getExtension();
                    // // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getSaveName();
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    // echo $info->getFilename(); 
                }else{
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
    }
}