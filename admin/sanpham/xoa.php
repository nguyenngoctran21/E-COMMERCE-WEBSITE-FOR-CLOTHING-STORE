<?php
    // $id =$GET ['xoa'];
    // $sql ="DELETE FROM sampham where MaSP = $id ";
    // $rs = mysqli_query ($conn , $sql);
    // header('location:../index.php?action=sanpham');
    // include_once('../model/database.php');
		// $masp=$_GET['MaSP'];
		// $sql="DELETE FROM sampham WHERE MaSP=" . $masp;
        // $rs=mysqli_query($conn,$sql);
        // // mysqli_close($con);
		// header('location:../index.php?action=sanpham');
        // if(isset($_GET['xoa'])){
        //     $AnhNen=$_GET['AnhNen'];
        //     $sql="delete  from sanpham where AnhNen='$AnhNen'";
        //     $rs=mysqli_query($conn,$sql);
        //     if(isset($rs)){
        //         header('location:../index.php?action=sanpham&view=xoasp&thongbao=xoa');
        //         }else{
        //             header('location:../index.php?action=sanpham&view=xoasp&thongbao=xoa');
        //     }
        // }


        if(isset($_GET['xoa'])){
            $masp=$_GET['masp'];
            $delete="DELETE FROM `chitietsanpham` WHERE MaSP = $masp";
            $rs_d=mysqli_query($conn,$delete);
            if(isset($rs_d)){
                $delete2="DELETE FROM `sanpham` WHERE MaSP = $masp";
                $rs_d2=mysqli_query($conn,$delete2);
                if(isset($rs_d2)){
                    $delete3="DELETE FROM `anhsp` WHERE MaSP = $masp";
                    $rs_d3=mysqli_query($conn,$delete3);
                    if(isset($rs_d3)){
                        header('location:../index.php?action=sanpham&thongbao=xoa');
                    }else{
                        header('location:../index.php?action=sanpham&view=themsp&thongbao=loi');
                    }
                    
                }
                
            }
        }    	
		
	
?>