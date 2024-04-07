<%-- 
    Document   : newjsp
    Created on : 30/mai/2023, 12:11:17
    Author     : Barnabé
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%

        try {
            String id_curso = request.getParameter("Cr");

            String DRIVER = "com.mysql.jdbc.Driver";
            Class.forName(DRIVER);
            Connection con = null;
            ResultSet rs = null, rs_1 = null;
            Statement st = null, st_1 = null;

            String sql = "select * from disciplina where disciplina.id_curso=" + id_curso;
            String sql_1 = "select * from docente";

            String url = "jdbc:mysql://localhost:3306/sgnotas2";
            String root = "root";
            String psw = "";

            con = DriverManager.getConnection(url, root, psw);
            st = con.createStatement();
            rs = st.executeQuery(sql);

            st_1 = con.createStatement();
            rs_1 = st_1.executeQuery(sql_1);
    %>
    <body>
        <% if (id_curso != null) {%>
        <h1>Form_associar Disciplina!</h1>
        <form class="" name="form1" method="post" action="back/data_save.jsp?acao=Atribuir">
            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Professor</span>
                        <select name="selecionar_Prof" class="form-control" aria-label="Disciplina"
                                aria-describedby="basic-addon1" id="#" size="1px" >
                            <%
                                while (rs_1.next()) {
                                    String nome_discip = rs_1.getString("nome_docente");
                                    String id_discip = rs_1.getString("id_docente");
                                    out.println("<option value=\"" + id_discip + "\">" + nome_discip + "</option>");
                                }
                            %>
                        </select>

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Disciplina</span>
                        <select name="selecionar_disc" class="form-control" aria-label="Disciplina"
                                aria-describedby="basic-addon1" id="#" size="1px" >
                            <%
                                while (rs.next()) {
                                    String nome_discip = rs.getString("nome_docente");
                                    String id_discip = rs.getString("id_discip");
                                    out.println("<option value=\"" + id_discip + "\">" + nome_discip + "</option>");
                                }
                            %>
                        </select>

                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Periodo</span>
                        <select name="periodo_pro" class="form-control" aria-label="Genero"
                                aria-describedby="basic-addon1" id="#" size="1px">
                            <option value="Diurno">Diurno</option>
                            <option value="Noturno">Noturno</option>
                        </select>
                    </div>
                </div>
            </div>

            <p><button class="btn btn-outline-primary" type="reset">Limpar</button>&nbsp;&nbsp;&nbsp;
                <button class="btn btn-outline-success" type="submit">Cadastrar</button>
            </p>
        </form>

        <% } %>       

        <%

            } catch (SQLException ex) {

            }

        %>
    </body>
</html>
