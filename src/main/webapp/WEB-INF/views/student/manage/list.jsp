<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<div id="studentManageListPanel">
	<div class="toolbar-menu-panel">
		<button class="btn btn-bg add-student-btn">添加</button>
	</div>
	<div class="real-content-panel">
		<table class="table table-stripe table-hover">
			<thead>
				<th class="check-all-btn cursor-pointer" width="100px">序号</th>
				<th>学号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>专业</th>
				<th>方向</th>
				<th>技术</th>
				<th>能力</th>
				
			</thead>
			<tbody>
				<c:forEach var="student" items="${students }" varStatus="status">
					<tr data-id="${student.id }">
						<td><input type="checkbox" class="student-item-id" value="${student.id }">&nbsp;${status.count }</td>
						<td>${student.id }</td>
						<td>${student.name}</td>
						<td>${student.gener}</td>
						<td>${student.object}</td>
						<td>${student.direction}</td>
						<td>${student.technology}</td>
						<td>${student.ability}</td>
				
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<script>
	$(function() {
		var $studentManageListPanel = $("#studentManageListPanel");

		// 添加权限
		$studentManageListPanel.find(".add-student-btn").on("click", function() {
			loadMainContent("/student/content/add", function() {

			}, {
				studentId : -1
			});
		});

		// 编辑权限
		$studentManageListPanel.find(".edit-student-btn").on("click", function() {
			var $this = $(this);
			var studentId = $this.parent().parent().data("id");

			loadMainContent("/student/content/add", function() {

			}, {
				studentId : studentId
			});
		});

		
		// 选中所有
		$studentManageListPanel.find(".check-all-btn").on("click", function () {
			// 获取所有复选框数量
			var allItemNum = $studentManageListPanel.find(".student-item-id").length;
			
			// 获取被选中的复选框数量
			var checkedItemNum = $studentManageListPanel.find(".student-item-id:checked").length;
			
			// 对比复选框是否全部被选中
			var isChecked = allItemNum === checkedItemNum;
			
			// 如果全部被选中，则反选，否则全选
			$studentManageListPanel.find(".student-item-id").prop("checked", !isChecked);
		});
		
		
	});
</script>