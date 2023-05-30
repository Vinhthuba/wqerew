<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 30/05/2023
  Time: 02:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>My List Book</title>

  <link type="text/css" rel="stylesheet" href="css/list.css">
  <link rel="icon" href="img/hoala.jpg">

</head>
<body>
<div class="containerimg" style="background-image: url('img/hello.jpg');">





</div>
<br>
<a href="products?action=new" style="transform: translateY(50px);
    margin-left: 60px;" class="highlight">Add New Book</a>
<form method="get" action="products">
  <input type="hidden" name="action"  value="search">
  <input type="text" name="searchItem" placeholder="Search for book name or Author name,....">
  <button type="submit" class="search-button"><img src="img/lens.png" alt="Search"></button>

</form>


<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Image</th>
    <th>Name</th>
    <th>Author</th>
    <th>Price</th>
    <th>Category</th>
    <th>Description</th>
    <th>Amount</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
  <c:choose>
    <c:when test="${empty productList}">



    </c:when>
    <c:otherwise>
      <c:forEach var="product" items="${productList}">
        <tr>
          <td>${product.id}</td>
          <td class="image-cell">
            <img src="img/${product.img}" alt="Book Image">
          </td>
          <td>${product.name}</td>
          <td>${product.author}</td>
          <td>${product.price}</td>
          <td>${product.category}</td>
          <td>${product.desc}</td>
          <td>${product.amount}</td>
          <td class="actions">
            <div class="action-buttons">
              <a href="products?action=edit&id=${product.id}" class="button">Edit</a>
              <a href="products?action=delete&id=${product.id}" class="button" onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
            </div>
          </td>
        </tr>
      </c:forEach>
    </c:otherwise>
  </c:choose>
  </tbody>
</table>
</body>
</html>
