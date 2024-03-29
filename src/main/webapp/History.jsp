<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/9/2022
  Time: 5:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lato&family=Poppins&display=swap');*{padding: 0;margin: 0;box-sizing: border-box}body{background-color: #777;font-family: 'Poppins', sans-serif}
        .wrapper{background-color: #222;min-height: 100px;max-width: 800px;margin: 10px auto;padding: 10px 30px}.dark,.input:focus{background-color: #222}
        .navbar{padding: 0.5rem 0rem}.navbar .navbar-brand{font-size: 30px}#income{border-right: 1px solid #bbb}
        .notify{display: none}.nav-item .nav-link .fa-bell-o, .fa-long-arrow-down, .fa-long-arrow-up{padding: 10px 10px;background-color: #444;border-radius: 50%;position: relative;font-size: 18px}.nav-item .nav-link .fa-bell-o::after{content: '';position: absolute;width: 7px;height: 7px;border-radius: 50%;background-color: #ffc0cb;right: 10px;top: 10px}.nav-item input{border: none;outline: none;box-shadow: none;padding: 3px 8px;width: 75%;color: #eee}.nav-item .fa-search{font-size: 18px;color: #bbb;cursor: pointer}.navbar-nav:last-child{display: flex;align-items: center;width: 40%}.navbar-nav .nav-item{padding: 0px 0px 0px 10px}.navbar-brand p{display: block;font-size: 14px;margin-bottom: 3px}.text{color: #bbb}.money{font-family: 'Lato', sans-serif}.fa-long-arrow-down, .fa-long-arrow-up{padding-left: 12px;padding-top: 8px;height: 30px;width: 30px;border-radius: 50%;font-size: 1rem;font-weight: 100;color: #28df99}.fa-long-arrow-up{color: #ffa500}.nav.nav-tabs{border: none}.nav.nav-tabs .nav-item .nav-link{color: #bbb;border: none}.nav.nav-tabs .nav-link.active{background-color: #222;border: none;color: #fff;border-bottom: 4px solid #fff}.nav.nav-tabs .nav-item .nav-link:hover{border: none;color: #eee}.nav.nav-tabs .nav-item .nav-link.active:hover{border-bottom: 4px solid #fff}.nav.nav-tabs .nav-item .nav-link:focus{border-bottom: 4px solid #fff;color: #fff}.table-dark{background-color: #222}.table thead th{text-transform: uppercase;color: #bbb;font-size: 12px}.table thead th, .table td, .table th{border: none;overflow: auto auto}td .fa-briefcase, td .fa-bed, td .fa-exchange, td .fa-cutlery{color: #ff6347;background-color: #444;padding: 5px;border-radius: 50%}td .fa-bed, td .fa-cutlery{color: #40a8c4}td .fa-exchange{color: #b15ac7}tbody tr td .fa-cc-mastercard, tbody tr td .fa-cc-visa{color: #bbb}tbody tr td.text-muted{font-family: 'Lato', sans-serif}tbody tr td .fa-long-arrow-up, tbody tr td .fa-long-arrow-down{font-size: 12px;padding-left: 7px;padding-top: 3px;height: 20px;width: 20px}.results span{color: #bbb;font-size: 12px}.results span b{font-family: 'Lato', sans-serif}.pagination .page-item .page-link{background-color: #444;color: #fff;padding: 0.3rem .75rem;border: none;border-radius: 0}.pagination .page-item .page-link span{font-size: 16px}.pagination .page-item.disabled .page-link{background-color: #333;color: #eee;cursor: crosshair}@media(min-width:768px) and (max-width: 991px){.wrapper{margin: auto}.navbar-nav:last-child{display: flex;align-items: start;justify-content: center;width: 100%}.notify{display: inline}.nav-item .fa-search{padding-left: 10px}.navbar-nav .nav-item{padding: 0px}}@media(min-width: 300px) and (max-width: 767px){.wrapper{margin: auto}.navbar-nav:last-child{display: flex;align-items: start;justify-content: center;width: 100%}.notify{display: inline}
            .nav-item .fa-search{padding-left: 10px}.navbar-nav .nav-item{padding: 0px}
            #income{border: none}}@media(max-width: 400px){.wrapper{padding: 10px 15px;margin: auto}
            .btn{font-size: 12px;padding: 10px}.nav.nav-tabs .nav-link{padding: 10px}
        }
        /*.contentColum{*/
        /*     height: 60px;*/
        /*}*/
        .contentColum>span{
            position: relative;
            top: 7px;
        }
    </style>
</head>
<body>
<div class="wrapper rounded">
    <nav class="navbar navbar-expand-lg navbar-dark dark d-lg-flex align-items-lg-start">
        <a class="navbar-brand" href="#">History buy ticket<p class="text-muted pl-1">Welcome to your history buy ticket</p>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <span class="fa fa-bell-o font-weight-bold"> </span>
                        <span class="notify">Notifications</span>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="#">
                        <span class="fa fa-search"></span>
                    </a> <input type="search" class="dark" placeholder="Search">
                </li>
            </ul>
        </div>
    </nav>
    <div class="row mt-2 pt-2">
        <div class="col-md-6" id="income">
            <div class="d-flex justify-content-start align-items-center">
                <p class="fa fa-long-arrow-down"></p>
                <p class="text mx-3">Số vé</p>
                <p class="text-white ml-4 money">${quantityLSMV}</p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="d-flex justify-content-md-end align-items-center">
                <div class="fa fa-long-arrow-up">
                </div>
                <div class="text mx-3">Expense</div>
                <div class="text-white ml-4 money">
                    <span>${totalMoney}</span>đ
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-between align-items-center mt-3">
        <ul class="nav nav-tabs w-75">
            <li class="nav-item"> <a class="nav-link active" href="#history">History</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Reports</a> </li>
        </ul>
        <a href="/viewUser"style="display:block;">
            <button class="btn btn-primary">Home Transaction</button>
        </a>
    </div>
    <div class="table-responsive mt-3">
        <table class="table table-dark table-borderless">
            <thead>
            <tr>
                <th scope="col">Tên phim</th>
                <th scope="col">Thể loại</th>
                <th scope="col">Ngày mua</th>
                <th scope="col">Ngày chiếu</th>
                <th scope="col" >Amount</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listVeLSMV}" var="l">
                <tr style="max-height: 60px">
                    <td scope="row">
                        <span><img style="width: 28px;height: 36px" src="${l.film.img}" alt=""></span>
                        <span style="font-size: 13px;margin-left: 5px;color:aquamarine;" >${l.film.tenPhim}</span>
                    </td>
                    <td class="contentColum" style="font-size: 13px;color: burlywood" >
                        <span>${l.film.loaiPhim}, ${l.film.quocGia}
                       </span>
                    </td>
                    <td class="contentColum" style="font-size: 13px">
                        <span>${l.ngayMua}</span>
                    </td>
                    <td class="contentColum" style="font-size: 13px">
                        <span>
                        ${l.film.ngayKhoiChieu}
                    </span></td>
                    <td class="contentColum">
                        <span style="color: red;font-size: 13px">${l.film.giaPhim} vnđ</span></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="d-flex justify-content-between align-items-center results">
        <span class="pl-md-3">Showing<b class="text-white"> 1-7 0f 200 </b> trasactions</span>
        <div class="pt-3">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item disabled"> <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&lt;</span> </a> </li>
                    <li class="page-item"> <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&gt;</span> </a> </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
