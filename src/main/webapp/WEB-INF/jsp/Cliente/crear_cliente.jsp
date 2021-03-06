<%-- 
    Document   : crear
    Created on : 13-nov-2017, 16:21:21
    Author     : LC1300XXXX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Clientes</title>
        <jsp:include page="/WEB-INF/jspf/header.jsp" />
       
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>--</h2>
        <div class="container">
            <jsp:include page="/WEB-INF/jspf/menu.jsp" />

            <div class="row">
                <div class="col col-lg-6">
                    <h1>Registrar Clientes</h1>
                    
                    <jsp:include page="/WEB-INF/jspf/mensajes.jsp" />
                    
                    <form method="post" action="catalogo">
                        <div class="form-group">
                            <label for="id">Nombre Cliente</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="readonly" aria-describedby="id-help">
                            <small id="id-help" class="form-text text-muted">Ingrese el nombre del cliente</small>
                        </div>
                        <div class="form-group">
                            <label for="rut">Rut</label>
                            <input type="text" class="form-control" id="producto" name="producto" placeholder="Ingrese el nombre de su producto" aria-describedby="producto-help">
                            <small id="producto-help" class="form-text text-muted">Ejemplo: xx.xxx.xxx-x</small>
                        </div>
                        <div class="form-group">
                            <label for="categoria">Direcciòn</label>
                            <select class="form-control" name="categoria" id="categoria">
                                <option value="0">Seleccione una categoría</option>
                                <c:forEach items="${categorias}" var="c">
                                    <option value="${c.id}">${c.nombre}</option>
                                </c:forEach>
                            </select>
                        </div>
                                <div class="form-group">
                            <label for="id">Comuna</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="readonly" aria-describedby="id-help">
                            <small id="id-help" class="form-text text-muted">Ingrese el nombre del cliente</small>
                        </div>
                                <div class="form-group">
                            <label for="id">Comuna</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="readonly" aria-describedby="id-help">
                            <small id="id-help" class="form-text text-muted">Ingrese el nombre del cliente</small>
                        </div>
                        <div class="form-group">
                            <label for="precio">Precio</label>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                <input type="number" class="form-control" id="precio" name="precio" placeholder="Ingrese el precio del producto" aria-describedby="precio-help">
                            </div><!-- end input-group-->
                            <small id="precio-help" class="form-text text-muted">Ejemplo: Ingresa el precio del producto con sólo números, no comas, puntos ni otro tipo de caracteres.</small>
                        </div>
                        <div class="form-group">
                            <label for="producto">Imagen</label>
                            <div class="input-group">
                                <span class="input-group-addon">http://</span>
                                <input type="text" class="form-control" id="imagen" name="imagen" placeholder="Ingrese la URL de la imagen" aria-describedby="imagen-help">
                            </div><!-- end input-group-->
                            <small id="imagen-help" class="form-text text-muted">Ejemplo: http://www.site.com/a/imagen.jpg</small>
                        </div>
                        <div class="form-group">
                            <label>Descripción</label>
                            <textarea name="descripcion" class="form-control"></textarea>
                            <small class="form-text text-muted">Descripción extensa del producto</small>
                        </div>

                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div><!-- end col-->
        </div><!-- end row-->

        <jsp:include page="/WEB-INF/jspf/footer.jsp" />
    </body>
</html>
