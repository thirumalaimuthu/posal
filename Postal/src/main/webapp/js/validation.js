/**
 * 
 */
$(function() {
	
	$.validator.addMethod("lettersonly",function(value,element){
		return this.optional(element)||/^[a-z]+$/i.test(value);
		},"Enter Only Letters without Space");

	
	$("#form").validate({
	
		rules:{
			first_name:{
				required:true,
				first_name:true,
				lettersonly:true
			},
			last_name:{
				
				required:true,
				last_name:true,
				lettersonly:true
			},
			email : {
				required : true,
				email : true
			},
			password : {
				required : true,
				minlength:5
			},
			mobile:{
				required:true,
				number:true,
				minlength:10,
				maxlength:10
			},
			door_no:{
				required : true,
				number:true,
				door_no:true
			},
			city:{
				
				required : true,
				lettersonly:true
			},
			state:{
				
				required : true,
				lettersonly:true
			},
			pincode:{
				required : true,
				number:true,
				minlength:6,
				maxlength:6
			}
			
		},
			messages:{
				first_name:{
					required:"Firstname can't be Empty"
				
				},
				last_name:{
					required:"Lastname can't be Empty"
					
				},
				email : {
					required:"Email can't be Empty"
					
				},
				password : {
					required : "Password Can't be Empty",
					minlength:"Password should have at least 5 letters"	
				},
				mobile : {
					required : "Mobile Can't be Empty",
					number:"Enter Numbers Only",
					minlength:"Mobile Number should have  10 Digits"	
				},
				door_no:{
					required:"Door number can't be Empty",
					number:"Enter Number Only"
				},
				city:{
					required:"City can't be Empty"
				},
				state:{
					required:"State can't be Empty"
				},
				pincode:{
					required:"Pincode can't be Empty",
					minlength:"Pincode Number should have 6 Digits"	,
					number:" Enter Valid Pincode"
				}
				
			}
			
			
	});

});
$(function(){
	$("#landing_page").validate({
		rules:{
			product_name:{
				
				required:true,
				lettersonly:true
			},
			weight:{
				required:true,
			},
			date:{
				required:true
			}
		},
		messages:{
			product_name:{
				required:"Product name can't be Empty"
			},
			weight:{
				required:"Weight can't be Empty"
			},
			date:{
				required:"Date can't be Empty"
			}
		}
		
	});
});