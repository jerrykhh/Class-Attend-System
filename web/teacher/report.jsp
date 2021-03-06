<%-- 
    Document   : dashboard
    Created on : 2019/11/11, 下午 10:08:39
    Author     : JerryKwok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="system.bean.ClassBean"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Teacher Area | Report</title>
        <!-- Bootstrap core CSS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">

    </head>
    <body>
        <jsp:include page="../header.jsp"></jsp:include>
            <section id="main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                        <%@taglib uri="/WEB-INF/tlds/nav-taglib.tld" prefix="nav" %>
                        <nav:showNav role="Teacher" active="report" />
                    </div>
                    <div class="col-lg-9">
                        <!-- Website Overview -->
                        <div class="card">
                            <div class="card-header main-color-bg">
                                <h5 class="card-title">SELECT Class to Generate Report </h5>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">Class</th>
                                            <th scope="col"> </th>
                                            <th scope="col">Head</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <jsp:useBean id="classList" scope="request" class="java.util.ArrayList<system.bean.ClassBean>"/>
                                        <%
                                            for (ClassBean classVal : classList) {
                                                out.print("<tr data-href=\"report?class=" + classVal.getClassName() + "\">");
                                                out.print("<td colspan=2>" + classVal.getClassName() + "</td>");
                                                out.print("<td>" + classVal.getTeacherBean().getTeacherFormalName() + "</td>");
                                                out.print("</tr>");
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <br>
        <footer></footer>


        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $("tr[data-href]").click(function () {
                    window.location.href = $(this).attr("data-href");
                })
            });
        </script>
    </body>

</html>

