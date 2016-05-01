$(function() {
    $.material.init();
    $("#student_register_number").mask('999-999999');
    $('.datetimepicker').datetimepicker({
      format: "DD/MM/YYYY hh:mm a Z"
    });
});
