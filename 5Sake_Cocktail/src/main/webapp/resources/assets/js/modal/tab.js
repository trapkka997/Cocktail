$('#myTab a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
})

$('#myTab a[href="#profile"]').tab('show'); // 이름으로 탭 선택
$('#myTab a:first').tab('show'); // 첫번째 탭 선택
$('#myTab a:last').tab('show'); // 마지막 탭 선택
$('#myTab li:eq(2) a').tab('show'); // 세번째 탭 선택 (순서는 0부터)

$('a[data-toggle="tab"]').on('shown', function (e) {
  e.target // 새로 선택된 탭
  e.relatedTarget // 이젠 탭
})