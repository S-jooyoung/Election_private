$(document).ready(function(){
    let index = {
        init:function () {
            $("#btn-save").on("click", ()=>{
                this.save();
            });
        },

        save:function (){
            let data= {
                title: $("#title").val(),
                content:  CKEDITOR.instances['content'].getData()
            };
            $.ajax({
                type:'post',
                url:"/api/board",
                data:JSON.stringify(data),
                contentType:"application/json;charset=utf-8",
                dataType:"json"
            }).done(function (resp){
                alert("글쓰기 완료");
                location.href="/vote/promiseList";
            }).fail(function (error){
                alert(JSON.stringify(error));
            });
        },
    }
    index.init();
});