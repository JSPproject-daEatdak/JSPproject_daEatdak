/**
 * 
 */
$('#email').on('change', function() {
	let id = $(this).val();
	$('.checkId-result').text("");

	console.log(this);
	console.log(id);

	$.ajax({

		url: "checkIdOk.me",
		type: "get",
		data: {
			"id": id
		},
		success: function(result) {
			if (result == 0) {
				$('.sign-btn').attr("disabled", false);

			} else if (result == 1) {
				$('.checkId-result').text('이미 존재하는 이메일입니다.');
				$('.sign-btn').attr("disabled", true);


			}
		}

	})
});	