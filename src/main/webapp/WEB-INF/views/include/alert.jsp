<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${!empty alertTabFeedback}">
    <div style="width: 100%;position: fixed;top: 20%;" id="myAlert">
        <div style="width: 30%;margin: 0 auto;background: #fff;padding: 10px 20px;border-radius: 10px;-moz-box-shadow:5px 4px 8px #616161; -webkit-box-shadow:5px 4px 8px #616161; box-shadow:5px 4px 8px #616161;">
            <div style="border-bottom: 1px solid #ddd;text-align: center;position: relative;">
                <h2 style="font-size: 24px;">反馈</h2>
                <div style="position: absolute;top: 10px;right:5px;display: inline-block;font-size: 24px;cursor: pointer;" class="closeAlert" url="${ctx}/shce/tabFeedback/haveRead?id=${alertTabFeedback.id}">✘</div>
            </div>
            <div style="">
                <div class="alertTitle">线索</div>
                <div class="alertText">${alertTabFeedback.tabClue.feedbackProblem}</div>
                <br>
                <%--<div class="alertTitle"  style="display: block;">反馈人:</div>--%>
                <%--<div class="alertText">${alertTabFeedback.createBy.name}</div>--%>
                <div class="alertTitle" >反馈时间：</div>
                <div class="alertText"><fmt:formatDate value="${alertTabFeedback.feedbackTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                <div class="alertTitle" style="display: block;">反馈内容：</div>
                <div class="alertText">${alertTabFeedback.feedbackContent}</div>
            </div>
        </div>
    </div>


</c:if>

<c:if test="${!empty alertTabSupervise}">
    <div style="width: 100%;position: fixed;top: 20%;" id="myAlert">
        <div style="width: 30%;margin: 0 auto;background: #fff;padding: 10px 20px;border-radius: 10px;-moz-box-shadow:5px 4px 8px #616161; -webkit-box-shadow:5px 4px 8px #616161; box-shadow:5px 4px 8px #616161;">
            <div style="border-bottom: 1px solid #ddd;text-align: center;position: relative;">
                <h2 style="font-size: 24px;">督办</h2>
                <div style="position: absolute;top: 10px;right:5px;display: inline-block;font-size: 24px;cursor: pointer;" class="closeAlert" url="${ctx}/shce/tabSupervise/haveRead?id=${alertTabSupervise.id}">✘</div>
            </div>
            <div style="">
                <div class="alertTitle">线索:</div>
                <div class="alertText">${alertTabSupervise.tabClue.feedbackProblem}</div>
                <%--<div class="alertTitle" style="display: block;">督办人:</div>--%>
                <%--<div class="alertText">${alertTabSupervise.createBy.name}</div>--%>
                <br>
                <div class="alertTitle"  >督办时间：</div>
                <div class="alertText"><fmt:formatDate value="${alertTabSupervise.superviseTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                <div class="alertTitle" style="display: block;">督办内容：</div>
                <div class="alertText">${alertTabSupervise.superviseContent}</div>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${!empty alertTabMessageList}">
    <div style="width: 100%;position: fixed;top: 20%;" id="myAlert">
        <div style="width: 30%;margin: 0 auto;background: #fff;padding: 10px 20px;border-radius: 10px;-moz-box-shadow:5px 4px 8px #616161; -webkit-box-shadow:5px 4px 8px #616161; box-shadow:5px 4px 8px #616161;">
            <div style="border-bottom: 1px solid #ddd;text-align: center;position: relative;">
                <h2 style="font-size: 24px;">信息</h2>
                <div style="position: absolute;top: 10px;right:5px;display: inline-block;font-size: 24px;cursor: pointer;" class="closeAlert" url="${ctx}/shce/tabMessage/haveRead">✘</div>
            </div>

            <c:forEach items="${alertTabMessageList}" var="tabMessage">
                <div style="border-bottom: 1px solid #aaa;margin-bottom: 10px;padding: 5px;">
                    <div style="color: #aaa;display: inline-block">发送时间：</div>
                    <div style="color: #aaa;display: inline-block" ><fmt:formatDate value="${tabMessage.sendTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div><br>
                    <div style="color: #777;display: inline-block">发送人：</div>
                    <div style="color: #777;display: inline-block" >${tabMessage.senderUser.name}</div><br>
                    <div style="color: #333;display: inline-block;font-size: 16px;height: 20px;line-height:20px;">内容：</div>
                    <div style="color: #333;display: inline-block;font-size: 16px;height: 20px;line-height:20px;">
                        <c:out value="${tabMessage.content}"  escapeXml="false"/>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</c:if>

<c:if test="${!empty alertWarn}">
    <div style="width: 100%;position: fixed;top: 20%;" id="myAlert">
        <div style="width: 30%;margin: 0 auto;background: #fff;padding: 10px 20px;border-radius: 10px;-moz-box-shadow:5px 4px 8px #616161; -webkit-box-shadow:5px 4px 8px #616161; box-shadow:5px 4px 8px #616161;">
            <div style="border-bottom: 1px solid #ddd;text-align: center;position: relative;">
                <h2 style="font-size: 24px;">提醒</h2>
                <div style="position: absolute;top: 10px;right:5px;display: inline-block;font-size: 24px;cursor: pointer;" class="closeAlert" url="">✘</div>
            </div>
            <div style="">
                <div class="alertTitle">线索:</div>
                <div class="alertText">${alertWarn.tabClue.feedbackProblem}</div>
                    <%--<div class="alertTitle" style="display: block;">督办人:</div>--%>
                    <%--<div class="alertText">${alertTabSupervise.createBy.name}</div>--%>
                <br>
                <div class="alertTitle"  >预计完成时间：</div>
                <div class="alertText"><fmt:formatDate value="${alertWarn.expectTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                <div class="alertTitle" style="display: block;">提醒内容：</div>
                <div class="alertText" style="color: red;">您已逾期！！！</div>
            </div>
        </div>
    </div>
</c:if>



<script>

    $(".closeAlert").click(function () {
        if($(this).attr("url") == null || $(this).attr("url") == ""){
            return false;
        }

        $.ajax({
            type: 'get',
            url: $(this).attr("url"),
            cache: false,
            dataType: 'json',
            success: function (data, textStatus, jqXHR) {
                $("#myFormDiv").hide(500);
            },
            error: function () {
                // alert("数据异常！");
            }
        });
        $("#myAlert").hide(1000);
    });

</script>

<style>
    .alertTitle{
        font-size: 20px;
        font-weight: 900;
        color: #555;
        height: 35px;
        line-height: 35px;
        display: inline-block;
    }
    .alertText{
        line-height: 35px;
        height: 35px;
        font-size: 15px;
        display: inline-block;
        text-indent: 20px;
    }

</style>