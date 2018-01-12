<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<div id="studentAddPanel">
	<div class="headline">
		<h2>
			
			新增学生

		</h2>
	</div>
	<form class="real-content-form form" name="student" action="${ctx }/student/content/save" method="post">
		<div class="form-group">
			<label class="input-label">名称</label> <input name="name" class="input-content" type="text" placeholder="请输入姓名" >
		</div>
		
		<div class="form-group">
			<label class="input-label">性别</label> 
			<div class="radio-content">
				<label><input type="radio" name="gener" value="男" checked> 男</label>
				<label><input type="radio" name="gener" value="女 ">女</label>
			</div>
		</div>
		<div class="form-group">
			<label class="input-label">专业</label> <input name="object" class="input-content" type="text" placeholder="请输入专业" >
		</div>
		<div class="form-group">
			<label class="input-label">方向</label> 
			<select class="select-content" name="direction">
				<option value="Java" selected>Java开发</option>
				<option value="大数据" >大数据</option>
				<option value="软件测试" >软件测试</option>
				<option value="Web前端" >Web前端</option>
			</select> <i class="select-arrow"></i>
		</div>
		<!-- <div class="form-group">
			<label class="input-label">方向</label> <input name="direction" class="input-content" type="text" placeholder="请输入" >
		</div> -->
		<div class="form-group">
			<label class="input-label">技术</label> <input name="technology" class="input-content" type="text" placeholder="请输入技术" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" >
		</div>
		<div class="form-group">
			<label class="input-label">能力</label> <input name="ability" class="input-content" type="text" placeholder="请输入能力" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" >
		</div>
	</form>
	<div class="bottom-menu-panel">
		<button class="btn btn-bg save-student-btn">保存</button>
		<button class="btn btn-bg cancel-btn">取消</button>
	</div>
</div>

<script>
	$(function() {
		var $studentAddPanel = $("#studentAddPanel");
		var $studentContentForm = $studentAddPanel.find("form");

		// 初始化表单提交
		$studentContentForm.on("submit", function(e) {
			// 阻止表单默认提交事件
			e.preventDefault();

			var $this = $(this);

			// jquery-form的异步提交方式
			$this.ajaxSubmit({
				beforeSubmit : function(data, $form) {
					var name = $form.find("input[name='name']");
					var object = $form.find("input[name='object']");
					var technology = $form.find("input[name='technology']");
					var ability = $form.find("input[name='ability']");

					if ($.trim(name.val()) === "") {
						return showInputTip(name, "请输入姓名");
					} else {
						hideInputTip(name);
					}

					if ($.trim(object.val()) === "") {
						return showInputTip(object, "请输入专业");
					} else {
						hideInputTip(object);
					}
					
					if ($.trim(technology.val()) === "") {
						return showInputTip(technology, "请输入技术");
					} else {
						hideInputTip(technology);
					}
					
					if ($.trim(ability.val()) === "") {
						return showInputTip(ability, "请输入能力");
					} else {
						hideInputTip(ability);
					}
					
					
				},
				success : function() {
					// 刷新页面
					triggerCurrentMenu();
				}
			});
		});

		// 保存学生
		$studentAddPanel.find(".save-student-btn").on("click", function() {
			$studentContentForm.trigger("submit");
		});

		// 取消保存
		$studentAddPanel.find(".cancel-btn").on("click", function() {
			// 刷新页面
			triggerCurrentMenu();
		});
	})
</script>