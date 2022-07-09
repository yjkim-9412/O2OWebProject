<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  
  <!--   구글폰트(버튼) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

  <title>MaRoo</title>

  <link rel="stylesheet" href="../resources/css/maicons.css">

  <link rel="stylesheet" href="../resources/css/bootstrap.css">

  <link rel="stylesheet" href="../resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="../resources/css/theme.css">
  
  <!-- 부트스트랩  -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
<style type="text/css">
  
li {
	list-style: none;
}  
  
/*  푸터  */
.callnumber{
    padding-bottom: 0.1875rem;
    font-size: 1.25rem;
    font-weight: 500;
    font-stretch: normal;
    color: #FFCD4A;
 }
.callnumberdown{
    margin: 0;
    font-size: .875rem;
    line-height: normal;
    letter-spacing: normal;
    color: #737373;
}
#footermenu1{
    margin: 0;
    font-size: .875rem;
    line-height: normal;
    letter-spacing: normal;
    color: #737373;
    position: absolute;
    bottom:49px;
}
#footermenu2{
	margin: 0;
    font-size: .875rem;
    line-height: normal;
    letter-spacing: normal;
    color: #737373;
    
}
#footermenu3{
	margin: 0;
    font-size: .875rem;
    line-height: normal;
    letter-spacing: normal;
    color: #737373;
    
}  
 
.page-footer {
width: 100%; bottom:0;
} 
  
/* nav */
.search {
  position: relative;
  width: 300px;
  left: 5px;
  
}

input {
  width: 100%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 12px;
}
input:focus{
	outline:1px solid #FFCD4A;
}
  
#img1 {
  position : absolute;
  width: 17px;
  top: 10px;
  right: 7px;
  margin: 0;
  
}  

/* 마루 사이즈 */
header img {
  width: 150px;
  margin-bottom: 5px;
}
  
/* 버튼 */

.button-55 {
  align-self: center;
  background-color: #fff;
  background-image: none;
  background-position: 0 90%;
  background-repeat: repeat no-repeat;
  background-size: 4px 3px;
  border-radius: 15px 225px 255px 15px 15px 255px 225px 15px;
  border-style: solid;
  border-width: 2px;
  box-shadow: rgba(0, 0, 0, .2) 15px 28px 25px -18px;
  box-sizing: border-box;
  color: #FFCD4A;
  cursor: pointer;
  display: inline-block;
  font-family: Neucha, sans-serif;
  font-size: 1rem;
  line-height: 23px;
  outline: none;
  padding: .75rem;
  text-decoration: none;
  transition: all 235ms ease-in-out;
  border-bottom-left-radius: 15px 255px;
  border-bottom-right-radius: 225px 15px;
  border-top-left-radius: 255px 15px;
  border-top-right-radius: 15px 225px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  
}

.button-55:hover {
  box-shadow: rgba(0, 0, 0, .3) 2px 8px 8px -5px;
  transform: translate3d(0, 2px, 0);
  
}

}
.button-55:focus {
  box-shadow: rgba(0, 0, 0, .3) 2px 8px 4px -6px;
  
}  

/* 회원정보 */
.thumb {
    width: 4.375rem;
    height: 4.375rem;
    min-width: 4.375rem;
    border-radius: 0.75rem;
    overflow: hidden;
    border: 0.0625rem solid #f2f2f2;
}

.user-info {
    flex: auto;
    text-align: left;
    padding-left: 0.75rem;
}

.user-name {
    display: flex;
    font-size: 1.125rem;
    font-weight: 500;
    color: #323232;
    position: relative;
    font-weight: bold;
    left: 70px;
    bottom: 60px;
}
  
.name-length {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    padding-right: 0.3125rem;
    max-width: 8.45rem;
}  
  
.user-id {
    display: flex;
    font-size: .75rem;
    color: #b5b5b5;
    position: relative;
    left: 70px;
    bottom: 58px;
    
}  
 
.id-length {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    max-width: 11.6875rem;
    padding-left: 5px;
} 

.arrow {
	position: relative;
	left: 600px;
    bottom: 80px;
}

.main-menu {
    display: flex;
    align-items: center;
    font-size: 1.125rem;
    font-weight: 700;
    color: #323232;
}

.sub-menu {
    font-size: 16px;
    font-weight: 500;
    color: #737373;
    padding: 0;
 
}

.sub-menu-container {
    padding: 1rem 0;
}

.sub-menu-container .sub-menu-list {
    position: relative;
    display: flex;
    align-items: center;
}
  
.underline {
    border-bottom: 0.0625rem solid;
    border-color: #f2f2f2;
}  

table {
  border-spacing: 80px;
  border-collapse: separate;
}

table td {
  width: 350px;
  height: 366px;
  padding: 5px -9px;
  padding-bottom: 299px;
}

.item-title{
    color: #737373;
}

.item-info {
    padding-top: 0.25rem;
    margin-bottom: 30px;
    font-weight: bold;

}

.item-container {
	width: 100%;
}

.cell_padding {
	padding : 3em 1em;
}

.service{
	background-image: url("https://dmmj3ljielax6.cloudfront.net/upload/service/73756793-16d5-4884-977b-0fceb355e571.jpg");
    background-size: cover;
    background-position: 50% 50%;
    position: relative;
    height: 20rem;
    z-index: 1;
} 

.contents {
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 100%;
    max-width: 43.75rem;
    text-align: center;
    padding: 0 1rem;
}

/* receipt */
#DIV_52 {
    height: 300px;
    width: 350px;
    perspective-origin: 487px 234.5px;
    transform-origin: 487px 234.5px;
    font: normal normal normal 16px/16px Helvetica, Arial, sans-serif;
/*     margin: 10px 23.5px 0px; */
}/*#DIV_52*/

#DIV_53 {
    height: 469px;
    width: 974px;
    perspective-origin: 487px 234.5px;
    transform-origin: 487px 234.5px;
    font: normal normal normal 16px/16px Helvetica, Arial, sans-serif;
}/*#DIV_53*/

#DIV_54 {
    box-shadow: rgba(0, 0, 0, 0.14902) 0px 1px 1px 0px, rgba(0, 0, 0, 0.027451) -1px 0px 0px 0px, rgba(0, 0, 0, 0.027451) 1px 0px 0px 0px, rgba(0, 0, 0, 0.117647) 0px 1px 0px 0px;
    height: 469px;
    width: 974px;
    perspective-origin: 487px 234.5px;
    transform-origin: 487px 234.5px;
    background: rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box border-box;
    font: normal normal normal 16px/16px Helvetica, Arial, sans-serif;
}/*#DIV_54*/

#DIV_1 {
    color: rgb(51, 51, 51);
    float: left;
    height: 429px;
    width: 288px;
    perspective-origin: 159px 234.5px;
    transform-origin: 159px 234.5px;
    border: 0px none rgb(51, 51, 51);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    margin: 0px 0px 0px 10px;
    outline: rgb(51, 51, 51) none 0px;
    padding: 0px 20px 40px 10px;
}/*#DIV_1*/

#DIV_2 {
    color: rgb(51, 51, 51);
    height: 359px;
    width: 288px;
    perspective-origin: 144px 179.5px;
    transform-origin: 144px 179.5px;
    border: 0px none rgb(51, 51, 51);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(51, 51, 51) none 0px;
}/*#DIV_2*/

#DIV_3 {
	margin-top: 0px;
	padding-top: 0px;
    background-position: 0px 0px;
    box-shadow: rgba(0, 0, 0, 0.298039) 0px 0px 3px 0px, rgba(0, 0, 0, 0.298039) 0px 10px 10px -5px;
    color: rgb(102, 102, 102);
    height: 600px;
    position: relative;
    width: 350px;
    perspective-origin: 144px 179.5px;
    transform-origin: 144px 179.5px;
    background: rgb(255, 255, 255) url(https://static.licdn.com/scds/common/u/images/apps/payments/textures/texture_paper_304x128_v1.png) repeat scroll 0px 0px / auto padding-box border-box;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
/*     margin: 70px 0px 0px; */
    outline: rgb(102, 102, 102) none 0px;
}/*#DIV_3*/

#DIV_3:after {
    background-position: 0px 0px;
    bottom: -8px;
    color: rgb(102, 102, 102);
    height: 10px;
    left: 0px;
    position: absolute;
    width: 288px;
    perspective-origin: 144px 5px;
    transform-origin: 144px 5px;
    content: ' ';
    background: rgba(0, 0, 0, 0) url(https://static.licdn.com/scds/common/u/images/apps/payments/textures/texture_paper_zigzag_288x18_v1.png) repeat-x scroll 0px 0px / auto padding-box border-box;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#DIV_3:after*/

#DIV_4 {
    color: rgb(102, 102, 102);
    height: 18px;
    width: 248px;
    perspective-origin: 144px 19px;
    transform-origin: 144px 19px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 20px 20px 0px;
}/*#DIV_4*/

#DIV_4:after {
    background-position: 0px 0px;
    color: rgb(102, 102, 102);
    height: 28px;
    position: absolute;
    right: -27px;
    top: 2px;
    width: 57px;
    perspective-origin: 28.5px 14px;
    transform-origin: 28.5px 14px;
    content: ' ';
    background: rgba(0, 0, 0, 0) url(https://static.licdn.com/scds/common/u/images/apps/payments/photo/photo_paperclip_57x28_v1.png) no-repeat scroll 0px 0px / auto padding-box border-box;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#DIV_4:after*/

#DIV_5 {
    color: rgb(102, 102, 102);
    height: 18px;
    width: 248px;
    perspective-origin: 124px 9px;
    transform-origin: 124px 9px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#DIV_5*/

#DIV_6 {
    color: rgb(67, 70, 73);
    height: 18px;
    width: 248px;
    perspective-origin: 124px 9px;
    transform-origin: 124px 9px;
    border: 0px none rgb(67, 70, 73);
    font: normal normal normal 16px/18px Helvetica, Arial, sans-serif;
    outline: rgb(67, 70, 73) none 0px;
}/*#DIV_6*/

#DIV_7, #DIV_8 {
    color: rgb(102, 102, 102);
    width: 248px;
    perspective-origin: 124px 0px;
    transform-origin: 124px 0px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#DIV_7, #DIV_8*/

#DIV_9 {
    color: rgb(102, 102, 102);
    height: 301px;
    position: relative;
    width: 248px;
    perspective-origin: 144px 160.5px;
    transform-origin: 144px 160.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 0px 20px 20px;
}/*#DIV_9*/

#TABLE_10 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 301px;
    width: 248px;
    perspective-origin: 124px 150.5px;
    transform-origin: 124px 150.5px;
    border: 0px none rgb(102, 102, 102);
    border-spacing: 0px 0px;
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TABLE_10*/

#TBODY_11 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 183px;
    vertical-align: baseline;
    width: 248px;
    perspective-origin: 124px 91.5px;
    transform-origin: 124px 91.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TBODY_11*/

#TR_12 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 65px;
    width: 248px;
    perspective-origin: 124px 32.5px;
    transform-origin: 124px 32.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_12*/

#TH_13 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 51px;
    text-align: left;
    vertical-align: top;
    width: 146px;
    perspective-origin: 73px 32.5px;
    transform-origin: 73px 32.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal bold 14px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#TH_13*/

#TD_14 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 51px;
    text-align: center;
    vertical-align: top;
    width: 23px;
    perspective-origin: 14.5px 32.5px;
    transform-origin: 14.5px 32.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 6px 0px 0px;
}/*#TD_14*/

#TD_15 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 51px;
    text-align: right;
    vertical-align: top;
    width: 73px;
    perspective-origin: 36.5px 32.5px;
    transform-origin: 36.5px 32.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#TD_15*/

#TR_16 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 52px;
    width: 248px;
    perspective-origin: 124px 26px;
    transform-origin: 124px 26px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_16*/

#TD_17 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 38px;
    text-align: left;
    vertical-align: top;
    width: 248px;
    perspective-origin: 124px 26px;
    transform-origin: 124px 26px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 0px 0px 14px;
}/*#TD_17*/

#UL_18 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 34px;
    text-align: left;
    width: 248px;
    perspective-origin: 124px 17px;
    transform-origin: 124px 17px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    margin: 4px 0px 0px;
    outline: rgb(102, 102, 102) none 0px;
    padding: 0px;
}/*#UL_18*/

#UL_18:after {
    border-collapse: collapse;
    clear: both;
    color: rgb(102, 102, 102);
    text-align: left;
    visibility: hidden;
    width: 248px;
    perspective-origin: 124px 0px;
    transform-origin: 124px 0px;
    content: ' ';
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    margin: 0px;
    outline: rgb(102, 102, 102) none 0px;
    overflow: hidden;
    padding: 0px;
}/*#UL_18:after*/

#LI_19 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 34px;
    width: 248px;
    perspective-origin: 124px 17px;
    transform-origin: 124px 17px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    outline: rgb(102, 102, 102) none 0px;
}/*#LI_19*/

#LI_19:after {
    border-collapse: collapse;
    clear: both;
    color: rgb(102, 102, 102);
    display: block;
    height: 0px;
    visibility: hidden;
    width: 248px;
    perspective-origin: 124px 0px;
    transform-origin: 124px 0px;
    content: ' ';
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    outline: rgb(102, 102, 102) none 0px;
    overflow: hidden;
}/*#LI_19:after*/

#TR_20 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 31px;
    width: 248px;
    perspective-origin: 124px 15.5px;
    transform-origin: 124px 15.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_20*/

#TH_21 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: left;
    vertical-align: top;
    width: 146px;
    perspective-origin: 73px 15.5px;
    transform-origin: 73px 15.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal bold 14px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#TH_21*/

#TD_22 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: center;
    vertical-align: top;
    width: 23px;
    perspective-origin: 14.5px 15.5px;
    transform-origin: 14.5px 15.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 6px 0px 0px;
}/*#TD_22*/

#TD_23 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 73px;
    perspective-origin: 36.5px 15.5px;
    transform-origin: 36.5px 15.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#TD_23*/

#TR_24 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 35px;
    width: 248px;
    perspective-origin: 124px 17.5px;
    transform-origin: 124px 17.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_24*/

#TD_25 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 21px;
    text-align: left;
    vertical-align: top;
    width: 248px;
    perspective-origin: 124px 17.5px;
    transform-origin: 124px 17.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 0px 0px 14px;
}/*#TD_25*/

#UL_26 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: left;
    width: 248px;
    perspective-origin: 124px 8.5px;
    transform-origin: 124px 8.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    margin: 4px 0px 0px;
    outline: rgb(102, 102, 102) none 0px;
    padding: 0px;
}/*#UL_26*/

#UL_26:after {
    border-collapse: collapse;
    clear: both;
    color: rgb(102, 102, 102);
    text-align: left;
    visibility: hidden;
    width: 248px;
    perspective-origin: 124px 0px;
    transform-origin: 124px 0px;
    content: ' ';
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    margin: 0px;
    outline: rgb(102, 102, 102) none 0px;
    overflow: hidden;
    padding: 0px;
}/*#UL_26:after*/

#LI_27 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    width: 248px;
    perspective-origin: 124px 8.5px;
    transform-origin: 124px 8.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    outline: rgb(102, 102, 102) none 0px;
}/*#LI_27*/

#LI_27:after {
    border-collapse: collapse;
    clear: both;
    color: rgb(102, 102, 102);
    display: block;
    height: 0px;
    visibility: hidden;
    width: 248px;
    perspective-origin: 124px 0px;
    transform-origin: 124px 0px;
    content: ' ';
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    list-style: none outside none;
    outline: rgb(102, 102, 102) none 0px;
    overflow: hidden;
}/*#LI_27:after*/

#TFOOT_28 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 118px;
    vertical-align: baseline;
    width: 248px;
    perspective-origin: 124px 59px;
    transform-origin: 124px 59px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TFOOT_28*/

#TR_29 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 33px;
    width: 248px;
    perspective-origin: 124px 16.5px;
    transform-origin: 124px 16.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_29*/

#TH_30 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 146px;
    perspective-origin: 73px 16.5px;
    transform-origin: 73px 16.5px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TH_30*/

#TD_31 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 29px;
    perspective-origin: 14.5px 16.5px;
    transform-origin: 14.5px 16.5px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TD_31*/

#TD_32 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 73px;
    perspective-origin: 36.5px 16.5px;
    transform-origin: 36.5px 16.5px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TD_32*/

#TR_33, #TR_41 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 19px;
    width: 248px;
    perspective-origin: 124px 9.5px;
    transform-origin: 124px 9.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_33, #TR_41*/

#TH_34, #TH_42 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 146px;
    perspective-origin: 73px 9.5px;
    transform-origin: 73px 9.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 1px 0px;
}/*#TH_34, #TH_42*/

#TD_35, #TD_43 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 29px;
    perspective-origin: 14.5px 9.5px;
    transform-origin: 14.5px 9.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 1px 0px;
}/*#TD_35, #TD_43*/

#TD_36, #TD_44 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 17px;
    text-align: right;
    vertical-align: top;
    width: 73px;
    perspective-origin: 36.5px 9.5px;
    transform-origin: 36.5px 9.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 1px 0px;
}/*#TD_36, #TD_44*/

#TR_37 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    display: none;
    height: auto;
    width: auto;
    perspective-origin: 50% 50%;
    transform-origin: 50% 50%;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_37*/

#TH_38 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: auto;
    text-align: right;
    vertical-align: top;
    width: 59%;
    perspective-origin: 50% 50%;
    transform-origin: 50% 50%;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 1px 0px;
}/*#TH_38*/

#TD_39, #TD_40 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: auto;
    text-align: right;
    vertical-align: top;
    width: auto;
    perspective-origin: 50% 50%;
    transform-origin: 50% 50%;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 1px 0px;
}/*#TD_39, #TD_40*/

#TR_45 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 47px;
    width: 248px;
    perspective-origin: 124px 23.5px;
    transform-origin: 124px 23.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
}/*#TR_45*/

#TH_46 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 32px;
    text-align: right;
    vertical-align: top;
    width: 146px;
    perspective-origin: 73px 23.5px;
    transform-origin: 73px 23.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal bold 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TH_46*/

#SPAN_47 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    display: block;
    height: 17px;
    text-align: right;
    width: 146px;
    perspective-origin: 73px 16px;
    transform-origin: 73px 16px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal bold 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#SPAN_47*/

#TD_48 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 32px;
    text-align: right;
    vertical-align: top;
    width: 29px;
    perspective-origin: 14.5px 23.5px;
    transform-origin: 14.5px 23.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TD_48*/

#SPAN_49 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    display: block;
    height: 0px;
    text-align: right;
    width: 29px;
    perspective-origin: 14.5px 7.5px;
    transform-origin: 14.5px 7.5px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#SPAN_49*/

#TD_50 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    height: 32px;
    text-align: right;
    vertical-align: top;
    width: 73px;
    perspective-origin: 36.5px 23.5px;
    transform-origin: 36.5px 23.5px;
    border: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 1px;
}/*#TD_50*/

#SPAN_51 {
    border-collapse: collapse;
    color: rgb(102, 102, 102);
    display: block;
    height: 17px;
    text-align: right;
    width: 73px;
    perspective-origin: 36.5px 16px;
    transform-origin: 36.5px 16px;
    border-top: 1px dashed rgb(170, 170, 170);
    border-right: 0px none rgb(102, 102, 102);
    border-bottom: 0px none rgb(102, 102, 102);
    border-left: 0px none rgb(102, 102, 102);
    font: normal normal normal 13px/17px Helvetica, Arial, sans-serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 14px 0px 0px;
}/*#SPAN_51*/

.page-footer .bg-image {
 	width: 1250px;
 	height: 390px;
}

</style>
  

  
</head>
<body>




  <!-- Back to top button -->
  <div class="back-to-top"></div>
  
  <header>
    <c:catch>
<c:choose>
<c:when test="${ empty sessionScope.id }">

<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
      <div class="container">
        <a href="<%=request.getContextPath() %>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
           
           <!--search바  -->
           <div class="search">
              <input type="text" placeholder="어떤 서비스가 필요하세요?">
              <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
            </div>
            
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="about.html">고수찾기</a>
            </li>  
            <li class="nav-item active">
              <a class="nav-link" href="<%=request.getContextPath() %>/member/login">로그인</a>
            </li>
            <li class="nav-item">
              <button class="button-55" role="button" onclick="location.href='<%=request.getContextPath() %>/member/insert'">회원가입</button>
            </li>
          </ul>
        </div>

      </div>
    </nav>
</c:when>
<c:otherwise>
    	<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
        <div class="container">
          <a href="<%=request.getContextPath() %>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

          <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="navbar-collapse collapse" id="navbarContent">
             
             <!--search바  -->
             <div class="search">
                <input type="text" placeholder="어떤 서비스가 필요하세요?">
                <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
              </div>
              
            <ul class="navbar-nav ml-auto">
              
              <li class="nav-item">
                <a class="nav-link" href="about.html">고수찾기</a>
              </li>  
              <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/mypage/info">마이페이지</a>
              </li>
              <li class="nav-item">
                <button class="button-55" role="button" onclick="location.href='<%=request.getContextPath() %>/member/logout'">로그아웃</button>
              </li>
            </ul>
          </div>

        </div>
      </nav>
</c:otherwise>
</c:choose>
</c:catch>
  </header>

  <input type="hidden" name="id" value="${sessionScope.id }">
  <input type="hidden" name="email" value="${memberDTO.email }">
  <input type="hidden" name="password" value="${memberDTO.password }">
  

  <div class="service">
	<div class="contents section-title h1" style="color: white; font-weight: bold;">견적요청서</div>
</div>

<div class="container">
<table>
<tr>
<c:forEach var="i" begin="0" end="${result.size() - 1 }" step="1">
<td onClick="location.href='#'" style="cursor:pointer;">
<div id="DIV_52">

				<div id="DIV_3">
					<div id="DIV_4" >
						<div id="DIV_5">
							<div id="DIV_6">${result.get(i).get(i).service_name}</div>
						</div>
						<c:forEach var="j" begin="0" end="${result.get(i).size() - 1 }" step="1">
						<li class="item-container">
						           <div class="item">
						           <div class="item-title">${result.get(i).get(j).ques_contents }</div>
						 	       <div class="item-info">${result.get(i).get(j).ans_contents}</div>
						 		   </div>
						</li>
						</c:forEach>
			</div>
</div>

</div>
</td>
<c:if test="${(i + 1) % 3 == 0 }">
</tr><tr>
</c:if>
</c:forEach>
</tr>
</table>
</div>
  <!-- 푸터 -->

  <footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);" >
    <div class="container" style="width: 1250px; height: 390px;">
      <div class="row mb-5">
        <div class="col-lg-3 py-3">
          
          <div class="callnumber">1600-8282</div>
			<p class="callnumberdown">평일 10:00 ~ 18:00 (점심시간 13:00 ~ 14:00 제외)</p>
          <div class="social-media-button">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#"><span class="mai-logo-instagram"></span></a>
            <a href="#"><span class="mai-logo-youtube"></span></a>
          </div>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu" id="footermenu1">
            <li><b>마루소개</b></li>
            <li>마루메인</li>
            <li>Prime</li>
            <li>엔터프라이즈</li>
            <li>프리랜서 클럽</li>
          </ul>
          
         
        </div>
        <div class="col-lg-3 py-3">
          <ul class="footer-menu" id="footermenu2">
          	<li><b>고객안내</b></li>
            <li>이용안내</li>
            <li>안전정책</li>
            <li>예상금액</li>
            <li>고수찾기</li>
            <li>마루보증</li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
           <ul class="footer-menu" id="footermenu3">
          	<li><b>주고안내</b></li>
            <li>이용안내</li>
            <li>주고가이드</li>
            <li>주고가입</li>
            <li>주고센터</li>
            </ul>
        </div>
      </div>
      <p class="text-center" id="copyright">(주)마루ㅣ부산시 동천로 109 삼한골든게이트 7층ㅣ대표: 1조ㅣ개인정보관리책임자: 1조ㅣ사업자등록번호:678-12-78901</p>
    </div>
  </footer>
 
<script src="../resources/js/jquery-3.5.1.min.js"></script>

<script src="../resources/js/bootstrap.bundle.min.js"></script>

<script src="../resources/js/google-maps.js"></script>

<script src="../resources/vendor/wow/wow.min.js"></script>

<script src="../resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>



