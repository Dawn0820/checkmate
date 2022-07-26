<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>CHECKMATE</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<%-- <link href="resources/img/favicon.png" rel="icon"> --%>
<%-- <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon"> --%>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>스터디그룹 상세보기</title>
<style>
.detail {
	text-align: center;
}

.detail>table {
	text-align: center;
}
</style>
<body>

	<jsp:include page="../common/header.jsp" />
	<br>
	<br>
	<br>
	<br>

	<div style="margin-top: 200px; margin-bottom: 200px;"
		class="container mt-3 detail">
		<input type="hidden" id="sgNo" value="${studyGroup.sgNo}">

		<table class="table table-dark">
			<thead>
				<tr>
					<th colspan="2">${studyGroup.sgName}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>팀장</td>
					<td>${studyGroup.sgOwnerNick}</td>
				</tr>
				<tr>
					<td>모집인원</td>
					<td>${studyGroup.sgMax}</td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td>${studyGroup.sgCategory}</td>
				</tr>
				<tr>
					<td>지역</td>
					<td>${studyGroup.sgLocation}</td>
				</tr>
				<tr>
					<th colspan="2">스터디그룹 목표</th>
				</tr>
				<tr>
					<td colspan="2">${studyGroup.sgGoal}</td>
				</tr>
				<tr>
					<th colspan="2">스터디그룹 설명</th>
				</tr>
				<tr>
					<td colspan="2">${studyGroup.sgContent}</td>
				</tr>
			</tbody>
		</table>

		<c:choose>
			<c:when test="${ empty loginUser }">
				<button type="button" class="btn btn-secondary"
					onclick="studyGroupList();">목록</button>
			</c:when>
			<c:when test="${ studyGroup.sgOwnerNick == loginUser.userNick }">
				<button type="button" class="btn btn-secondary"
					data-bs-toggle="modal" data-bs-target="#sgApplyList">신청자 목록보기</button>
				<button type="button" class="btn btn-secondary"
					onclick="studyGroupList();">목록</button>
			</c:when>
			<c:otherwise>
				<button type="button" class="btn btn-secondary"
					data-bs-toggle="modal" data-bs-target="#sgApply">신청하기</button>
				<button type="button" class="btn btn-secondary"
					onclick="studyGroupList();">목록</button>
			</c:otherwise>
		</c:choose>

		<!-- 스터디그룹 신청 -->
		<div class="modal" id="sgApply">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">${studyGroup.sgName}에지원하기</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<form id="postForm" action="" method="post">
							<input type="hidden" name="sgApplyNick"
								value="${loginUser.userNick}"> <input type="hidden"
								name="sgApplySgNo" value="${studyGroup.sgNo}"> <label
								for="sgApplyContent"></label>
							<textarea class="form-control" rows="5" name="sgApplyContent"
								placeholder="지원동기를 입력해주세요"></textarea>
						</form>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal" onclick="apply();">신청하기</button>
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">닫기</button>
					</div>

				</div>
			</div>
		</div>

		<!-- 스터디그룹 지원자 리스트 -->
		<div class="modal" id="sgApplyList">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">지원자 확인하기</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<table id="applyList" class="table table-dark table-hover">
							<thead>
								<tr>
									<th width="120">지원자</th>
									<th width="500">지원동기</th>
									<th colspan="2">수락/거절</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${studyGroupApplyList}" var="StudyGroupApply">
									<tr>
										<td id="" name=""><input type="hidden" id="sgaApplyNo"
											value="${StudyGroupApply.sgApplyNo}">${StudyGroupApply.sgApplyNick}</td>
										<c:choose>
											<c:when
												test="${fn:length(StudyGroupApply.sgApplyContent) gt 15}">
												<td><c:out
														value="${fn:substring(StudyGroupApply.sgApplyContent, 0, 30)}"></c:out>...</td>
											</c:when>
											<c:otherwise>
												<td>${StudyGroupApply.sgApplyContent}</td>
											</c:otherwise>
										</c:choose>
										<td width="70"><button type="button"
												class="btn btn-secondary" name="accept">수락</button></td>
										<td width="70"><button type="button"
												class="btn btn-secondary" onclick="reject();">거절</button></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">닫기</button>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		function studyGroupList() {
			location.href = "studyGroupList.sg";
		}

		function apply() {
			$("#postForm").attr("action", "studyGroupApply.sga").submit();
		}
		
		$(function() {
			$("#applyList>tbody>tr>td>button[name=accept]").click(
					function() {
						var sgNo = ${studyGroup.sgNo}
						var sgaApplyNo = $(this).parent().parent().children().children("#sgaApplyNo").val();
						
							if (confirm("선택하실 멤버를 수락하시겠습니까?")) {
								$.ajax({
									type : "POST",
									url : "${pageContext.request.contextPath}/acceptStudyGroup.sga",
									data : {
										sgaApplyNo, sgNo
									},
									dataType : "json",
									success : function(data) {
										if (data > 0) {
											alert("수락완료");
											window.location = "${pageContext.request.contextPath}/studyGroupDetail.sg?sgNo=${studyGroup.sgNo}";
										}
									},
									error : function() {
										alert("서버통신 오류");
									}
								});
							}
					})
		})
		
				$(function() {
			$("#applyList>tbody>tr>td>button[name=reject]").click(
					function() {
						var sgNo = ${studyGroup.sgNo}
						var sgaApplyNo = $(this).parent().parent().children().children("#sgaApplyNo").val();
						
							if (confirm("선택하실 멤버를 수락하시겠습니까?")) {
								$.ajax({
									type : "POST",
									url : "${pageContext.request.contextPath}/acceptStudyGroup.sga",
									data : {
										sgaApplyNo, sgNo
									},
									dataType : "json",
									success : function(data) {
										if (data > 0) {
											alert("수락완료");
											window.location = "${pageContext.request.contextPath}/studyGroupDetail.sg?sgNo=${studyGroup.sgNo}";
										}
									},
									error : function() {
										alert("서버통신 오류");
									}
								});
							}
					})
		})
	</script>

	<div class="">
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>