var socialBool=true;
var public={
    //导航
    nav:function(){
        $(".item.cur").addClass("this_cur");
        $(".nav_dot").stop(true,true).animate({left:""+($(".parttop .nav .item.cur").index()*154+10*(4+$(".parttop .nav .item.cur").index())+"px")},300)
        //副导航滑出效果
        $(window).scroll(function(){
            if($(window).scrollTop()>90)
            {
                $(".header_fly").addClass("show");
            }else{
                $(".header_fly").removeClass("show");
            }
        })
        //导航hover效果
        $(".nav .item").hover(function(){
            var index=$(this).index();
            $(this).addClass("cur").siblings().removeClass("cur");
            $(".nav_dot").stop(true,true).animate({left:""+(index*154+10*(4+index)+"px")},300)
        },function(){})
        $(".nav").hover(function(){},function(){
            var index=$(".parttop .nav .this_cur").index();
            $(".nav .item.this_cur").addClass("cur").siblings().removeClass("cur");
            $(".nav_dot").stop(true,true).animate({left:""+(index*154+10*(4+index)+"px")},300)
        })
        //弹窗关闭
        $(".popup_close,.popup_btn.off,.popup_btn.ok").click(function(){
            $(".popup").hide();
            $(".popup_box").hide();
        })
    },
    //首页
    index:function(){
        //计算第一屏宽高
        $(".parttop").css({width:$(window).width()+"px",height:$(window).height()+"px"});
        //输出最新岗位数据10.9.15.163
        HrPost("https://recruit.zt-express.com/recruit/getPostInfo",function(data){
            //console.log(data);
            var num=data.data.length;
            for(var i=0;i<num;i++)
            {
                $(".postnew_item:eq("+i+")").attr("href","social/detail.html?id="+data.data[i].id+"");
                $(".postnew_item:eq("+i+") .item_text strong").html(data.data[i].postName);
                $(".postnew_item:eq("+i+") .item_text span i").html(data.data[i].recruitNumbers);
                $(".postnew_item:eq("+i+") .item_text em").html(data.data[i].workCity);
            }
        })
        //输出最新岗位固定图片
        for(i=0;i<8;i++)
        {
            $(".postnew_item:eq("+i+") img").attr("src","images/index/0"+(i+1)+".jpg");
        }
        //视频播放
        var video_src = $(".video_play").attr("data-video");
        $(".video_play").click(function () {
            $(".video").fadeIn();
            var wd=$(".video_box").width();
            var hd=$(".video_box").height();
            jwplayer('video_room').setup({
                'flashplayer': 'video/player.swf',
                'file': video_src,
                'image': "",
                'controlbar': 'over',
                'width': wd,
                'height': hd,
                'autostart': 'true',
                'stretching': 'true'
            });
        })
        //视频关闭
        $(document).on("click",".video_close",function(){
            $(".video").hide();
            $(".video_box").html("").append('<span class="video_close"></span><div class="video_room" id="video_room"></div>');
        })
        //搜索
        $(".search_btn").click(function(){
            var text=encodeUTF8($(".search_txt").val());
            var storage=window.localStorage;
            storage.search_text=text;
            window.location.href="/social/index.html";
        })
        //工作类型
        HrPost("https://recruit.zt-express.com/recruit/getPositionInfo",function(data){
            //console.log(data.data);
            var html='';
            var num=data.data.length;
            for(var i=0; i<num;i++)
            {
                html+='<a href="social/index.html?id='+(i+1)+'">'+data.data[i]+'</a>';
            }
            $(".post_list").html(html);
        })
    },
    //下滑页面动画加载方法
    scroll_run: function (cls, toph) {
        $(cls).each(function () {
            var _this = $(this);
            var x = _this.offset().top;
            var winT = $(window).scrollTop();
            var winH = $(window).height();
            if ((x - winT) < (winH - toph)) {
                _this.addClass("animate");
            }
        })
        $(window).scroll(function () {
            $(cls).each(function () {
                var _this = $(this);
                var x = _this.offset().top;
                var winT = $(window).scrollTop();
                var winH = $(window).height();
                if ((x - winT) < (winH - toph)) {
                    _this.addClass("animate");
                }
            })
        })
    },
    // 社会招聘
    social:function(){
        new Vcity.CitySelector({input:'citySelect'});
        dataShow();
        $(".search_btn").click(function(){
            dataShow();
        })
        //首页快捷链接进入
        var type_id=queryString("id");
        //搜索框焦点效果
        $(".search_txt").focus(function(){
            $(".search_box").addClass("focus");
        })
        $(".search_txt").blur(function(){
            $(".search_box").removeClass("focus");
        })
        //工作类型
        HrPost("https://recruit.zt-express.com/recruit/getPositionInfo",function(data){
            console.log(data.data);
            var html='<span class="type_item checked" data-type="0">不限</span>';
            var num=data.data.length;
            for(var i=0; i<num;i++)
            {
                html+='<span class="type_item" data-type="'+(i+1)+'">'+data.data[i]+'</span>';
            }
            $(".type_list.work").html(html);
            if(type_id!=undefined)
            {
                $(".type_list.work .type_item:eq("+type_id+")").click();
            }
        })
        //具体职能
        $(document).on('click','.type_item',function(){
            var _thisp=$(this).parent();
            $(this).addClass("checked").siblings().removeClass("checked");
            socialBool=true;
            if(_thisp.hasClass("work"))
            {
                var postName=$(this).html();
                if(postName=="不限")
                {
                    $(".type_list.profession").html('<span class="type_item checked">不限</span>');
                    dataShow();
                }else{
                    HrPost("https://recruit.zt-express.com/recruit/selectLastPostByName ",{postName:postName},function(data){
                        //console.log(data.data);
                        var html='<span class="type_item checked" data-type="0">不限</span>';
                        var num=data.data.length;
                        for(var i=0; i<num;i++)
                        {
                            html+='<span class="type_item" data-type="'+(i+1)+'">'+data.data[i]+'</span>';
                        }
                        $(".type_list.profession").html(html);
                        dataShow();
                    })
                }
            }else{
                dataShow();
            }
        })
        //点击页码
        $(document).on('click','.Page a',function(){
            socialBool=false;
            if(!$(this).hasClass("cur"))
            {
                $(this).addClass("cur").siblings().removeClass("cur");
                dataShow();
            }
        })
        $(document).on('click','.Page em',function(){
            socialBool=false
            var this_num=$(".Page .page_item.cur").index();
            var a_num=$(".Page a").length;
            if($(this).hasClass("next"))
            {
                if(this_num<a_num)
                {
                    this_num++;
                    $(".Page .page_item:eq("+this_num+")").addClass("cur").siblings().removeClass("cur");
                }
            }else{
                if(this_num>1)
                {
                    this_num--;
                    $(".Page .page_item:eq("+this_num+")").addClass("cur").siblings().removeClass("cur");
                }
            }
            dataShow();
        })
    },
    //岗位详情
    socialDetail:function(){
        //岗位详情数据渲染
        var id=queryString("id");
        if(id)
        {
            HrPost("https://recruit.zt-express.com/recruit/getPostInfoById",{id:id},function(data){
                //console.log(data);
                var res=data.data;
                var postObligation="";
                var postRequire="";
                var postObligationArray=res.postObligation.split(/[；。]/);
                var postRequireArray=res.postRequire.split(/[；。]/);
                for(i=0;i<postObligationArray.length;i++)
                {
                    if(i==postObligationArray.length-2)
                    {
                        postObligation+='<p>'+postObligationArray[i]+'。</p>'
                    }else if(i!=postObligationArray.length-1){
                        postObligation+='<p>'+postObligationArray[i]+'；</p>'
                    }
                }
                for(j=0;j<postRequireArray.length;j++)
                {
                    if(j==postRequireArray.length-2)
                    {
                        postRequire+='<p>'+postRequireArray[j]+'。</p>'
                    }else if(j!=postRequireArray.length-1){
                        postRequire+='<p>'+postRequireArray[j]+'；</p>'
                    }
                }
                $(".detail_title").html(res.postName);         //岗位名称
                $(".workcity").html(res.workCity);             //工作城市
                $(".recruitNumbers").html(res.recruitNumbers); //招聘人数
                $(".postType").html(res.postType);             //所属类别
                $(".workAddress").html(res.workAddress);       //工作地点
                $(".phone").html(res.phone);                   //联系方式
                $(".postObligation").html(postObligation);     //工作职责
                $(".postRequire").html(postRequire);           //岗位要求
                $(".createonDate").html(res.issuerDate);
            })
        }
        //投递简历链接
        $(".resume_send").click(function(){
            window.location.href="../resume/index.html?id="+id;
        })
    },
    //关于中通
    about:function(){
        var num=0;
        $(".chronicle_btn").click(function(){
            if($(this).hasClass("next"))
            {
                if(num<4)
                {
                    num++;
                }
            }else{
                if(num>0)
                {
                    num--;
                }
            }
            $(".chronicle_room").css("transform","translateX(-"+num*110+"px)")
            $(".chronicle_room").css("-moz-transform","translateX(-"+num*110+"px)")
            $(".chronicle_room").css("-webkit-transform","translateX(-"+num*110+"px)")
        })
    },
    //常见问题
    issue:function(){
        //问题开关
        $(".issue_item .issue_title").click(function(){
            var _thisp=$(this).parent();
            if(_thisp.hasClass("show"))
            {
                _thisp.removeClass("show")
            }else{
                _thisp.addClass("show")
            }
        })
    },
    //简历提交(有附件)
    resume:function(){
        var hrefId="",
            hrefId=queryString("id");
        $(".back").click(function(){
            window.location.href="../social/detail.html?id="+hrefId;
        })
        if(hrefId!=undefined)
        {
            $(".menu_item.item_1").attr('href','index.html?id='+hrefId);
            $(".menu_item.item_2").attr('href','not.html?id='+hrefId);
        }
        //var list_1='[{"company":"1","duty":"2","start":"3","over":"4","workDescribe":"5"},{"company":"1","duty":"2","start":"3","over":"4","workDescribe":"5"}]';
        var uploader = WebUploader.create({
            // swf文件路径
            swf:'../scripts/Uploader.swf',
            server: 'https://recruit.zt-express.com/recruit/saveBaseInfo',//10.9.15.163
            pick: '#picker',
            fileNumLimit:1,
            multiple:false,
            accept:{
                title:"resume",
                extensions:"doc,docx,xls,xlsx,pdf"
            },
            fileSingleSizeLimit :10485760,
            formData:{
                userName:"",
                identity:"",
                phone:"",
                school:"",
                education:"",
                email:"",
                works:"",
                list:"",
                postId:""
            },
            auto:false,
            // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
            resize: false
        });
        $(".file_close").click(function(){
            uploader.reset();
            $(".file_text").hide();
            $(".file_text em").html("");
            $(".file_t").val("");
        })
        //文件选择后
        uploader.on( 'fileQueued', function( file ) {
            $(".file_text em").html(file.name);
            $(".file_t").val(file.name);
            $(".file_text").show();
            $(".webuploader-container label").remove();
        });
        //文件上传成功后
        uploader.on( 'uploadSuccess', function( file,response) {
            if(response.success==true)
            {
                popup(".succeed");
                //console.log("上传成功");
            }
        });
        uploader.on( 'uploadError', function( file ) {
            //console.log("上传出错");
        });
        uploader.on("error", function (type) {
            if (type == "Q_TYPE_DENIED") {
                $(".webuploader-container").append('<label>您上传的文件格式不正确，请重新选择。</label>')
            } else if (type == "Q_EXCEED_SIZE_LIMIT") {
                $(".webuploader-container").append('<label>您上传的文件大小超出限制。</label>')
            }else if(type == "Q_EXCEED_NUM_LIMIT"){
                alert("您只能上传1份简历,请删除后重新上传!");
            }else {
                $(".webuploader-container").append('<label>上传出错！请检查后重新上传！错误代码'+type+'</label>')
            }
        });
        //显示更多信息
        $(".show_btn").click(function(){
            $(this).hide();
            $(".hide_box").show();
        })
        //获取本地缓存
        var hasResume_test=window.localStorage.hasResume;
        //检测缓存
        if(hasResume_test!=undefined)
        {
            popup(".resume_box");
        }
        //自动录入缓存数据
        $(".entering").click(function(){
            //自动填写表单
            var hasResume=hasResume_test.split(",");
            $("#name").val(hasResume[0]);
            $("#identity").val(hasResume[1]);
            $("#phone").val(hasResume[2]);
            if(hasResume[3]!=undefined && hasResume[3]!="" )
            {
                $(".show_btn").hide();
                $(".hide_box").show();
                $("#school").val(hasResume[3]);
                $("#education").find("option:contains('"+hasResume[4]+"')").attr("selected",true);
                $("#email").val(hasResume[5]);
                $("#works").val(hasResume[6]);
            }
            $(".popup").hide();
            $(".popup_box").hide();
        })
        //表单验证2
        $("#resume_index").validate({
            debug:true,
            submitHandler:function(){
                //获取基本信息
                var id=queryString("id");
                var storage=window.localStorage;
                var userName="",identity="",phone="",school="",education="",email="",works="",postId,list="";
                userName=$("#name").val();
                identity=$("#identity").val();
                phone=$("#phone").val();
                school=$("#school").val();
                email=$("#email").val();
                works=$("#works").val();
                education=$("#education option:selected").text();
                postId=id;
                if($(".hide_box").css("display")=="none")
                {
                    education="";
                }else{
                    education=$("#education option:selected").text();
                }
                var hasResume=userName+","+identity+","+phone+","+school+","+education+","+email+","+works;
                storage.hasResume=hasResume;
                //console.log(hasResume);

                //参数赋值
                uploader.options.formData.userName = userName;
                uploader.options.formData.identity = identity;
                uploader.options.formData.phone = phone;
                uploader.options.formData.school = school;
                uploader.options.formData.email = email;
                uploader.options.formData.works = works;
                uploader.options.formData.education = education;
                //uploader.options.formData.list = [];
                uploader.options.formData.postId = postId;
                uploader.upload();
            }
        });
    },
    //简历提交(无附件)
    resume_not:function(){
        var hrefId="",
            hrefId=queryString("id");
        $(".back").click(function(){
            window.location.href="../social/detail.html?id="+hrefId;
        })
        if(hrefId!=undefined)
        {
            $(".menu_item.item_1").attr('href','index.html?id='+hrefId);
            $(".menu_item.item_2").attr('href','not.html?id='+hrefId);
        }
        //获取本地缓存
        var basic_test=window.localStorage.basic;
        var company_test=window.localStorage.company;
        //检测缓存
        if(basic_test!=undefined && company_test!=undefined)
        {
            popup(".resume_box");
        }
        //自动录入缓存数据
        $(".entering").click(function(){
            //自动填写表单-基本信息
            var basic=basic_test.split(",");
            $("#name").val(basic[0]);
            $("#identity").val(basic[1]);
            $("#phone").val(basic[2]);
            $("#school").val(basic[3]);
            $("#education").find("option:contains('"+basic[4]+"')").attr("selected",true);
            $("#email").val(basic[5]);
            $("#works").val(basic[6]);
            //自动填写表单-工作经验
            var company=eval(company_test);
            for(i=0;i<company.length;i++)
            {
                if(i!=0)
                {
                    addCompany();
                }
                $(".message_table.company:eq("+i+") .company").val(company[i][0]);
                $(".message_table.company:eq("+i+") .start").val(company[i][1]);
                $(".message_table.company:eq("+i+") .over").val(company[i][2]);
                $(".message_table.company:eq("+i+") .duty").val(company[i][3]);
                $(".message_table.company:eq("+i+") .experience").val(company[i][4]);
            }
            $(".popup").hide();
            $(".popup_box").hide();
        })
        //点击添加公司
        $(".add_table").click(function(){
            addCompany();
        })
        //表单验证
        $("#resume_form").validate({
            debug:true,
            submitHandler:function(){
                //数据本地储存
                //基本信息
                var id=queryString("id");
                var storage=window.localStorage;
                var userName,identity,phone,school,education,email,works,postId,list;
                userName=$("#name").val();
                identity=$("#identity").val();
                phone=$("#phone").val();
                school=$("#school").val();
                education=$("#education option:selected").text();
                email=$("#email").val();
                works=$("#works").val();
                postId=id; //职位ID
                var basic=userName+","+identity+","+phone+","+school+","+education+","+email+","+works;
                storage.basic=basic;
                //工作经验
                var num=$(".message_table.company").size();
                var company="";//本地缓存用
                var companyAjax="";//提交服务器用
                for( i=0;i<num;i++)
                {
                    var company_i=$(".message_table.company:eq("+i+")").find(".company").val();
                    var start_i=$(".message_table.company:eq("+i+")").find(".start").val();
                    var over_i=$(".message_table.company:eq("+i+")").find(".over").val();
                    var duty_i=$(".message_table.company:eq("+i+")").find(".duty").val();
                    var experience_i=$(".message_table.company:eq("+i+")").find(".experience").val();
                    //"company":"1","duty":"2","start":"3","over":"4","workDescribe":"5"
                    if(i==(num-1))
                    {
                        company+='["'+company_i+'","'+start_i+'","'+over_i+'","'+duty_i+'","'+experience_i+'"]]';
                        companyAjax+='{"company":"'+company_i+'","start":"'+start_i+'","over":"'+over_i+'","duty":"'+duty_i+'","workDescribe":"'+experience_i+'"}]'
                    }else{
                        company+='["'+company_i+'","'+start_i+'","'+over_i+'","'+duty_i+'","'+experience_i+'"],'
                        companyAjax+='{"company":"'+company_i+'","start":"'+start_i+'","over":"'+over_i+'","duty":"'+duty_i+'","workDescribe":"'+experience_i+'"},'
                    }
                }
                company="["+company;
                companyAjax="["+companyAjax;
                storage.company=company;
                //console.log(company);
                //console.log(companyAjax);
                //popup(".succeed");
                //resume_submit();
                //console.log(postId)
                //提交数据库
                HrPost("https://recruit.zt-express.com/recruit/saveBaseInfo",
                    {
                        userName:userName,
                        identity:identity,
                        phone:phone,
                        school:school,
                        education:education,
                        email:email,
                        works:works,
                        postId:postId,
                        list:companyAjax
                    },true,
                    function(data){
                        //console.log(data);
                        popup(".succeed");
                    })
            }
        });
    },
    //表单验证方法
    verify:function(){
        //姓名
        $("#name").rules('add',{
            required:true,
            messages:{
                required:'请输入您的姓名！'
            }
        });
        //手机
        $("#phone").rules('add',{
            required:true,
            rangelength:[11,11],
            digits:true,
            phone:true,
            messages:{
                required:'请输入您的手机号！',
                rangelength:'请输入正确的手机号！',
                digits:'请输入正确的手机号！',
                phone:'请输入正确的手机号！'
            }
        });
        //身份证
        $("#identity").rules('add',{
            required:true,
            sfzyz:true,
            messages:{
                required:'请输入您的身份证号码！',
                sfzyz:'请输入正确的身份证号码'
            }
        });
        //毕业院校
        $("#school").rules('add',{
            required:true,
            messages:{
                required:'请输入您的毕业院校！'
            }
        });
        //公司名称
        $("#company").rules('add',{
            required:true,
            messages:{
                required:'请输入您的公司名称！'
            }
        });
        //职务
        $("#duty").rules('add',{
            required:true,
            messages:{
                required:'请输入您的职务！'
            }
        });
        //起始日期
        $("#start").rules('add',{
            required:true,
            date:true,
            messages:{
                required:'请选择入职与离职时间，如在职则选择今日！',
                date:'日期格式不正确'
            }
        });
        //结束日期
        $("#over").rules('add',{
            required:true,
            date:true,
            messages:{
                required:'请选择入职与离职时间，如在职则选择今日',
                date:'日期格式不正确'
            }
        });
        //上传文件
        $(".webuploader-element-invisible").rules('add',{
            required:true,
            fileType:true,
            fileSize:true,
            messages:{
                required:'请上传简历文件',
                fileType:'上传的文件格式不正确',
                fileSize:'上传的文件大小不能大于10M'
            }
        });
        //邮箱验证规则
        $.validator.addMethod('email',function(value,element){
            var email =  /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
            return this.optional(element)||(email.test(value));
        });
        //手机验证规则
        $.validator.addMethod('phone',function(value,element){
            var phone = /^1[3|4|5|7|8][0-9]\d{8}$/;
            return this.optional(element)||(phone.test(value));
        });
        //日期验证规则
        $.validator.addMethod('date',function(value,element){
            var date = /^(19|20)\d{2}-(1[0-2]|0?[1-9])-(0?[1-9]|[1-2][0-9]|3[0-1])$/;
            return this.optional(element)||(date.test(value));
        });
        // 全局错误提醒
        $.validator.setDefaults({
            highlight : function(element,errorClass){
                $(element).parents('.table_tr').removeClass('has-success has-feedback');
                $(element).parents('.table_tr').addClass('has-error has-feedback');
                if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')!='I'){
                    $(element).parents('.table_tr').find("span:empty").removeClass('glyphicon glyphicon-ok form-control-feedback');
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-exclamation-sign form-control-feedback');
                }
                else if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')=='I'){
                    $(element).parents('.table_tr').find("i").show();
                    $(element).parents('.table_tr').find("span:empty").hide();
                }
                setTimeout(function(){
                    $(element).parent().find("label").addClass('control-label');
                },0);
            },
            unhighlight : function(element,errorClass){
                $(element).parents('.table_tr').removeClass('has-error has-feedback');
                $(element).parents('.table_tr').addClass('has-success has-feedback');
                if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')!='I'){
                    $(element).parents('.table_tr').find("span:empty").removeClass('glyphicon glyphicon-exclamation-sign form-control-feedback');
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-ok form-control-feedback');
                }
                else if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')=='I'){
                    $(element).parents('.table_tr').find("i").hide();
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-ok form-control-feedback').show();
                }
            },
            focusInvalid : false,
        });
    },
    verify_index:function(){
        //姓名
        $("#name").rules('add',{
            required:true,
            messages:{
                required:'请输入您的姓名！'
            }
        });
        //手机
        $("#phone").rules('add',{
            required:true,
            rangelength:[11,11],
            digits:true,
            phone:true,
            messages:{
                required:'请输入您的手机号！',
                rangelength:'请输入正确的手机号！',
                digits:'请输入正确的手机号！',
                phone:'请输入正确的手机号！'
            }
        });
        //身份证
        $("#identity").rules('add',{
            required:true,
            sfzyz:true,
            messages:{
                required:'请输入您的身份证号码！',
                sfzyz:'请输入正确的身份证号码'
            }
        });
        //文件
        $("#file_t").rules('add',{
            required:true,
            messages:{
                required:'请上传简历文件!'
            }
        });
        //邮箱验证规则
        $.validator.addMethod('email',function(value,element){
            var email =  /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
            return this.optional(element)||(email.test(value));
        });
        //手机验证规则
        $.validator.addMethod('phone',function(value,element){
            var phone = /^1[3|4|5|7|8][0-9]\d{8}$/;
            return this.optional(element)||(phone.test(value));
        });
        //日期验证规则
        $.validator.addMethod('date',function(value,element){
            var date = /^(19|20)\d{2}-(1[0-2]|0?[1-9])-(0?[1-9]|[1-2][0-9]|3[0-1])$/;
            return this.optional(element)||(date.test(value));
        });
        // 全局错误提醒
        $.validator.setDefaults({
            highlight : function(element,errorClass){
                $(element).parents('.table_tr').removeClass('has-success has-feedback');
                $(element).parents('.table_tr').addClass('has-error has-feedback');
                if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')!='I'){
                    $(element).parents('.table_tr').find("span:empty").removeClass('glyphicon glyphicon-ok form-control-feedback');
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-exclamation-sign form-control-feedback');
                }
                else if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')=='I'){
                    $(element).parents('.table_tr').find("i").show();
                    $(element).parents('.table_tr').find("span:empty").hide();
                }
                setTimeout(function(){
                    $(element).parent().find("label").addClass('control-label');
                },0);
            },
            unhighlight : function(element,errorClass){
                $(element).parents('.table_tr').removeClass('has-error has-feedback');
                $(element).parents('.table_tr').addClass('has-success has-feedback');
                if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')!='I'){
                    $(element).parents('.table_tr').find("span:empty").removeClass('glyphicon glyphicon-exclamation-sign form-control-feedback');
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-ok form-control-feedback');
                }
                else if($(element).parents('.table_tr').find("span:empty").prev().prop('tagName')=='I'){
                    $(element).parents('.table_tr').find("i").hide();
                    $(element).parents('.table_tr').find("span:empty").addClass('glyphicon glyphicon-ok form-control-feedback').show();
                }
            },
            focusInvalid : false,
        });
    }
}
//弹窗弹出规则
function popup(cls)
{
    $(".popup").fadeIn(300);
    $(cls).show().css("margin-top","-"+ parseInt($(".popup_box").height()/2+20)+"px");
}
//日历改造
function date(){
    var mydate = new Date();
    var y = mydate.getFullYear();
    var m = mydate.getMonth()+1;
    var d = mydate.getDate();
    laydate({istoday: true,min: '1900-01-01 00:00:00',max:y+"-"+m+"-"+d+" 00:00:00"});
}
//添加公司
function addCompany(){
    $(".add_table").before('<div class="message_table company clearboth">\
								<div class="table_tr long clearboth">\
									<span class="th">公司名称：</span>\
									<div class="td">\
										<input type="text" class="message_txt long company" placeholder="请输入公司名称" />\
									</div>\
								</div>\
								<div class="table_tr clearboth">\
									<span class="th">工作时间：</span>\
									<div class="td">\
										<input type="text" class="message_txt time start" onclick="date()" readonly="readonly" placeholder="开始时间" />\
										<input type="text" class="message_txt time over" onclick="date()" readonly="readonly" placeholder="结束时间" />\
									</div>\
								</div>\
								<div class="table_tr clearboth">\
									<span class="th">职务：</span>\
									<div class="td">\
										<input type="text" class="message_txt duty" placeholder="请输入您在公司的职务" />\
									</div>\
								</div>\
								<div class="table_tr long">\
									<span class="th">工作经历：</span>\
									<div class="td">\
										<textarea class="message_txta experience" placeholder="请简介您的工作经历与项目经验"></textarea>\
									</div>\
								</div>\
							</div>')
}
//渲染岗位列表
function dataShow(){
    var postName,postName_boll=true;
    var storage=window.localStorage;
    var key=storage.search_text;
    if (typeof(key) == "undefined") {
        postName=$(".search_txt").val();
    }else{
        postName=decodeUTF8(key);
        $(".search_txt").val(postName);
        storage.removeItem('search_text');
    }
    var workCity=$(".location em").html();  //工作城市
    var postType=$(".type_list.work .type_item.checked").html();  //工作类型
    var nextLevelType=$(".type_list.profession .type_item.checked").html();  //具体职能
    var pageSize=10;  //每页数据条数
    var page=1;  //页码
    var page_index;
    if($(".page_item.long").size()>0)
    {
        page_index=$(".Page .page_item.cur").index();
    }else{
        page_index=$(".Page .page_item.cur").index()+1;
    }
    if(postType=="不限")
    {
        postType="";
        nextLevelType="";
    }
    if(page_index > 1 && socialBool==false)
    {
        page=page_index;
    }else{
        page=1;
    }
    HrPost("https://recruit.zt-express.com/recruit/getPostInfoByName",
        {
            postName:postName,
            workCity:workCity,
            postType:postType,
            nextLevelType:nextLevelType,
            page:page,
            pageSize:pageSize
        },function(data){
            //console.log(data);
            var res=data.data;
            var num=res.length,pageNum=Math.ceil(data.total/10),list="",pageList="";
            if(pageNum>3)
            {
                pageList='<em class="long prev page_item"></em>';
            }
            for(i=0;i<num;i++)
            {
                if(res[i].postLabel=="热")
                {
                    list+='<a href="detail.html?id='+ res[i].id +'" class="result_tr hot clearboth">'
                }else if(res[i].postLabel=="急"){
                    list+='<a href="detail.html?id='+ res[i].id +'" class="result_tr fast clearboth">'
                }else{
                    list+='<a href="detail.html?id='+ res[i].id +'" class="result_tr clearboth">'
                }

                list+=	   '<span class="result_td t_1"><em>'+ res[i].postName +'</em></span>\
									<span class="result_td t_2">'+ res[i].postType +'</span>\
									<span class="result_td t_3">'+ res[i].recruitNumbers +'</span>\
									<span class="result_td t_4">'+ res[i].workCity +'</span>\
									<span class="result_td t_5">'+ res[i].issuerDate +'</span>\
									<span class="result_td t_6">\
										<div class="result_arrow"><span></span><em></em></div>\
									</span>\
								</a>'
            }
            for(j=0;j<pageNum;j++)
            {
                if(j==0)
                {
                    pageList+='<a href="javascript:void(0)" class="page_item cur">'+(j+1)+'</a>'
                }else{
                    pageList+='<a href="javascript:void(0)" class="page_item">'+(j+1)+'</a>'
                }
            }
            if(pageNum>3){
                pageList+='<em class="long next page_item"></em>'
            }
            if(page==1)
            {
                $(".Page").html(pageList);
            }
            $(".result_list").html(list);
            $(".total").html(data.total);
        })
}
//ajax封装
function HrPost(url, data, isHideLoading, callBack, dataType) {
    var dataType;
    if (!$.isFunction(callBack)) {
        if (callBack == undefined) {
            dataType = "json";
        } else {
            dataType = callBack;
        }
    } else {
        dataType = dataType || "json";
    }
    if (isHideLoading) {
        if ($.isFunction(isHideLoading)) {
            callBack = isHideLoading;
            isHideLoading = false;
        }
    }
    //loading动画
    if (isHideLoading) {
        var loading = '<div class="ajaxLoading"><div class="loader">加载中...</div></div>';
        $("body").append(loading);
        $(".ajaxLoading").show();
        isHideLoading = false;
    }
    $.post(url, data, function (res) {
        if (!isHideLoading) {
            $(".ajaxLoading").hide();
        }
        if (res != null && res != "") {
            if (callBack) {
                if ($.isFunction(callBack)) {
                    callBack(res);
                } else {
                    console.log("callBack is not a function");
                }
            }
        }
    }, dataType);
}
//获取url中ID
function queryString(key){
    var regex_str = "^.+\\?.*?\\b"+ key +"=(.*?)(?:(?=&)|$|#)"
    var regex = new RegExp(regex_str,"i");
    var url = window.location.toString();
    if(regex.test(url)) return RegExp.$1;
    return undefined;
}
//字符串转UTF-8
function encodeUTF8(str){
    var temp = "",rs = "";
    for( var i=0 , len = str.length; i < len; i++ ){
        temp = str.charCodeAt(i).toString(16);
        rs  += "\\u"+ new Array(5-temp.length).join("0") + temp;
    }
    return rs;
}
//UTF-8解码
function decodeUTF8(str){
    return str.replace(/(\\u)(\w{4}|\w{2})/gi, function($0,$1,$2){
        return String.fromCharCode(parseInt($2,16));
    });
}