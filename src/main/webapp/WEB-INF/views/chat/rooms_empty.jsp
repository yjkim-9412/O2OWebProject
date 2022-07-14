<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <title>MaRoo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


</head>
<style>
    .row1{
        --bs-gutter-x: -48rem;
        --bs-gutter-y: 2em;
        display: flex;
        flex-wrap: wrap;

        margin-right: calc(-.5 * var(--bs-gutter-x));
        margin-left: calc(-.5 * var(--bs-gutter-x));
    }
    .container1 {
        max-width: 40.5rem;
        position: relative;
        left: 29em;
        top: 2em;
    }
    .topdiv1 {
        padding: 0;
        max-width: 100%;
        position: relative;
        width: 34em;
        left: 28em;
    }

    .chat-filter-wrapper {
        border-bottom: 0.0625rem solid #f2f2f2;
        height: 3rem;
    }

    .chat-filter {
        height: 100%;
        padding: 0;
        margin-top: 0;
        margin-bottom: 1rem;
        text-align: center;
    }

    .chat-filter-item1.selected {
        font-weight: 700;
        border-bottom: 0.125rem solid #323232;
        color: #323232;
    }
    .chat-filter-item1 {
        cursor: pointer;
        height: 100%;
        color: #737373;
        font-size: .875rem;
        padding: 0.875rem 0.25rem;
        float: left;
        margin-left: 1rem;
    }
    li, ul {
        list-style: none;
    }

    @media (min-width: 768px)
        .page-header {
            position: static;
            border-bottom: none;
        }

        .container1[data-v-e47086a0] {
            max-width: 37.5rem;
        }

        section[data-name=page-title][data-v-10523478] {
            display: flex;
            justify-content: space-between;
        }

        section[data-name=page-title] h3[data-v-10523478] {
            color: #323232;
            font-weight: 500;
            display: inline-block;
            margin-bottom: 0;
        }

        section[data-name=page-info][data-v-10523478] {
            margin-top: 3.125rem;
        }

        section[data-name=page-info] div[class*=col][data-v-10523478] {
            padding: 0;
        }
 .page-body1 {
            min-height: 39em;
            padding: 1.5rem 0 9.6875rem;
        }
.no-chat1 {
    background-color: #fff;
    width: 100%;
    display: table;
}
.chat-list .page-body>.container.no-chat>div[data-v-e47086a0] {
    display: table-cell;
    vertical-align: middle;
}
        @media (min-width: 768px)
            .no-items[data-v-e47086a0] {
                padding-top: 3.75rem;
                padding-bottom: 3.75rem;
            }
            .chat-list .page-body>.container {
                min-height: 12.5rem;
            }
            @media (min-width: 768px)
                .no-items {
                    padding-top: 3.75rem;
                    padding-bottom: 3.75rem;
                }
</style>
<script>

       function deleteChat(index){
           if (confirm("대화방을 나가시겠습니까?")){
               var frm = 'form'+index;
               var receiver_email = 'receiver_email'+index;
               var session_name = 'session_name'+index;
               var userEmail = 'userEmail'+index;
               var currentUser = 'currentUser'+index;

               var param = {"receiver_email":document.getElementById(receiver_email).value,
                   "session_name":document.getElementById(session_name).value,
                   "userEmail":document.getElementById(userEmail).value,
                   "currentUser":document.getElementById(currentUser).value
               }
               $.ajax({
                   url:'${pageContext.request.contextPath}/chat/delete',
                   data: {'receiver_email':document.getElementById(receiver_email).value,
                       'session_name':document.getElementById(session_name).value,
                       'userEmail':document.getElementById(userEmail).value,
                       'currentUser':document.getElementById(currentUser).value
                   },
                   dataType:'text',
                   success:function(){
                       window.location.reload();


                   }
               });

               return true;
           }else {

               return false;
           }

       }


</script>
<body>
<header>

    <jsp:include page="../inc/top.jsp"/>

</header>
<div class="page-header">
    <div data-v-10523478="" data-v-e47086a0="" class="container1">
        <section data-v-10523478="" data-name="page-title"><h3 data-v-10523478="">채팅</h3><!----></section>
        <section data-v-10523478="" data-name="page-info"
                 class="row no-gutters align-items-center justify-content-between">
            <div data-v-10523478="" data-name="chat-search-input" class="col-12">
                <div data-v-10523478="" role="group" class="input-group">

                    </div>
            </div>

        </section>
    </div>
</div>
<div class="topdiv1">
    <div class="chat-filter-wrapper">
        <ul class="chat-filter">
            <li class="chat-filter-item1 selected"> 전체</li>
            <li class="chat-filter-item1"> 안 읽음</li>
            <li class="chat-filter-item1"> 즐겨찾기</li>
            <li class="chat-filter-item1"> 고용</li>
        </ul>
    </div>
</div>
<div data-v-e47086a0="" class="page-body1">
    <div data-v-e47086a0="" class="container no-chat1"><!---->
        <div data-v-e47086a0="" class="row1">
            <div class="container">
                <div>
                    <table>
                        <tr><td>
                            <div class="container" style="width: 1000px;">
                                <article style="text-align: center; margin-top: 50px; margin-bottom: 100px;">
                                    <i><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4MCIgaGVpZ2h0PSI4MCIgdmlld0JveD0iMCAwIDgwIDgwIj4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icHJlZml4X19hIiB4MT0iMCUiIHgyPSIxMDAlIiB5MT0iNTAlIiB5Mj0iNTAlIj4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAwQzdBRSIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0Q0M4RTUiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Y2lyY2xlIGN4PSI0MCIgY3k9IjQwIiByPSI0MCIgZmlsbD0idXJsKCNwcmVmaXhfX2EpIiBmaWxsLW9wYWNpdHk9Ii41Ii8+CiAgICAgICAgPHBhdGggZD0iTTE2IDY0TDY0IDY0IDY0IDE2IDE2IDE2eiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIzIiBkPSJNNDAgMjJjNC4wOCAwIDcuNDQ2IDMuMDU0IDcuOTM4IDdINTJjMS42NTcgMCAzIDEuMzQzIDMgM3YyM2MwIDEuNjU3LTEuMzQzIDMtMyAzSDI4Yy0xLjY1NyAwLTMtMS4zNDMtMy0zVjMyYzAtMS42NTcgMS4zNDMtMyAzLTNoNC4wNjJjLjQ5Mi0zLjk0NiAzLjg1OC03IDcuOTM4LTd6Ii8+CiAgICAgICAgPGNpcmNsZSBjeD0iMzkuOTUiIGN5PSIyOC43NSIgcj0iMS43NSIgZmlsbD0iI0ZGRiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjMiIGQ9Ik0zMiAzOEw0OCAzOE0zMiA0NEw0OCA0NE0zMiA1MEw0MSA1MCIvPgogICAgPC9nPgo8L3N2Zz4K"></i>
                                    <h3 style="margin: 12px 0px 8px; font-size: 18px; font-weight: 700;"> 받은 견적이 없습니다</h3>
                                    <p style="margin: 10px; font-size: 14px; color: #b5b5b5">
                                        <%--              요청서를 작성하고<br>--%>
                                        <%--              주고의 견적을 받아보세요.--%>
                                    </p>
                                </article>
                            </div>
                        </td></tr>
                    </table>

                </div>

            </div>


        </div><!----></div>
</div>


<footer>
    <jsp:include page="../inc/bottom.jsp"/>
</footer>
</body>
</html>
