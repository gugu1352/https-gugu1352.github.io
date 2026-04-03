<%@ page language="java" import="com.gin.util.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ include file="/head.jsp" %>


<script src="js/jquery.validate.js"></script>

<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 添加管理员 </span>
        </div>
        <div class="panel-body">
            <form action="admins.do?ac=update" method="post" name="form1" id="adminsform1">
                <!-- form 标签开始 -->

                <div class="form-group form-type-text">
                    <div class="form-item-flex">
                        <label class="form-label-title"><span style="color: red">*</span> 帐号</label>
                        <div class="form-label-control">${Info.html(mmm.username)}<input type="hidden" class="form-control" placeholder="输入帐号" style="width: 150px" data-rule-required="true" data-msg-required="请填写帐号" remote="common.do?ac=checkno&checktype=update&id=${mmm.id}&table=admins&col=username" data-msg-remote="内容重复了" id="username" name="username" value="${Info.html(mmm.username)}" /></div>
                    </div>
                </div>

                <div class="form-group" id="form-item-btn">
                    <div class="form-item-flex">
                        <label class="form-label-title"> </label>
                        <div class="form-label-control">
                            <input name="id" value="${mmm.id}" type="hidden" />
                            <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                            <input name="updtself" value="${updtself}" type="hidden" />

                            <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                            <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                        </div>
                    </div>
                </div>

                <!--form标签结束-->
            </form>

            <c:choose>
                <c:when test="${'1' == param.hideBtn }">
                    <script>
                        $("#form-item-btn").hide();
                    </script>
                </c:when></c:choose
            >

            <script>
                $(function () {
                    $("#adminsform1").validate();
                });
            </script>
        </div>
    </div>
</div>

<%@ include file="/foot.jsp" %>

