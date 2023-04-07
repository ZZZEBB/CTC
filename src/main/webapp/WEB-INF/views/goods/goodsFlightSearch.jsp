<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>호텔 목록 페이지</title>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

   <script type="text/javascript">
	   /* $(function() {
		    
		    $('#validate').validate({
		        ignore: [],
		        errorPlacement: function() {},
		        submitHandler: function() {
		            alert('Successfully saved!');
		        },
		        invalidHandler: function() {
		            setTimeout(function() {
		                $('.nav-tabs a small.required').remove();
		                var validatePane = $('.tab-content.tab-validate .tab-pane:has(input.error)').each(function() {
		                    var id = $(this).attr('id');
		                    $('.nav-tabs').find('a[href^="#' + id + '"]').append(' <small class="required">***</small>');
		                });
		            });            
		        },
		        rules: {
		            name: 'required',
		            email: {
		                required: true,
		                email: true
		            },
		            zipcode: 'required',
		            address: 'required',
		            city: 'required'
		        }
		    });
		    
		}); */
	   
		$(function() {
			  $('.nav-tabs a').click(function (e) {
			    e.preventDefault();
			    $(this).tab('show');
			  });
			});
   </script>
</head>
<body>
	<div class="container" style="margin-top: 20px;">

    <div class="panel panel-primary">
        <div class="panel-heading">
            Bootstrap Tab + jQuery Validade
        </div>
        <div class="panel-body">
            <form action="" class="form-horizontal" id="validate">
                <ul class="nav nav-tabs nav-justified nav-inline">
                    <li class="active"><a href="#primary" data-toggle="tab">Contact Information</a></li>
                    <li><a href="#secondary" data-toggle="tab">Address Information</a></li>
                </ul>


                <div class="tab-content tab-validate" style="margin-top:20px;">
                    <div class="tab-pane active" id="primary">
                        <div class="form-group">
                            <label for="name" class="control-label col-md-2">Name</label> 
                            <div class="col-md-10">
                                <input type="text" name="name" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="control-label col-md-2">E-mail</label> 
                            <div class="col-md-10">
                                <input type="email" name="email" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="secondary">
                        <div class="form-group">
                            <label for="zipcode" class="control-label col-md-2">Zip Code</label> 
                            <div class="col-md-10">
                                <input type="text" name="zipcode" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="control-label col-md-2">Address</label> 
                            <div class="col-md-10">
                                <input type="text" name="address" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="city" class="control-label col-md-2">City</label> 
                            <div class="col-md-10">
                                <input type="text" name="city" class="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group col-md-2 pull-right">
                    <button type="submit" class="btn btn-success btn-block">Save</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>