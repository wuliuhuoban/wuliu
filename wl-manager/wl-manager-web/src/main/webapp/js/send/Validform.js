/*閫氱敤琛ㄥ崟楠岃瘉鏂规硶532*/
//$(function () {
//    var getInfoObj = function () {
//        return $(this).parents("th").find(".Validform_checktip");
//    }

//    $("[datatype]").focusin(function () {
//        if (this.timeout) { clearTimeout(this.timeout); }
//        var infoObj = getInfoObj.call(this);
//        if (infoObj.siblings(".Validform_right").length != 0) {
//            return;
//        }
//        var flag = $(this).hasClass("Validform_error");
//        if (flag) {
//            infoObj.show().siblings("div").hide();
//        }



//    }).focusout(function () {
//        var infoObj = getInfoObj.call(this);
//        this.timeout = setTimeout(function () {
//            infoObj.hide().siblings(".Validform_wrong,.Validform_loading").show();
//        }, 0);

//    });

//});
//楠岃瘉鎻愮ず妗嗘樉绀洪殣钘�
function CheckTip(em) {
    var getInfoObj = function () {
        return $(this).parents(em).find(".Validform_checktip");
    }
    $("[datatype]").focusin(function () {
        if (this.timeout) { clearTimeout(this.timeout); }
        var infoObj = getInfoObj.call(this);
        if (infoObj.siblings(".Validform_right").length != 0) {
            return;
        }
        var flag = $(this).hasClass("Validform_error");
        if (flag) {
            infoObj.show().siblings("div").hide();
        }

    }).focusout(function () {
        var infoObj = getInfoObj.call(this);
        this.timeout = setTimeout(function () {
            infoObj.hide().siblings(".Validform_wrong,.Validform_loading").show();
        }, 0);

    });
}

(function ($, win, undef) {
    var errorobj=null,//鎸囩ず褰撳墠楠岃瘉澶辫触鐨勮〃鍗曞厓绱�;
        msgobj=null,//pop box object
        msghidden=true;//msgbox hidden?

    var tipmsg={//榛樿鎻愮ず鏂囧瓧;
        tit:"鎻愮ず淇℃伅",
        w:{
            "*":"涓嶈兘涓虹┖锛�",
            "*6-16":"璇峰～鍐�6鍒�16浣嶄换鎰忓瓧绗︼紒",
            "n":"璇峰～鍐欐暟瀛楋紒",
            "n6-16":"璇峰～鍐�6鍒�16浣嶆暟瀛楋紒",
            "s":"涓嶈兘杈撳叆鐗规畩瀛楃锛�",
            "s6-18":"璇峰～鍐�6鍒�18浣嶅瓧绗︼紒",
            "p":"璇峰～鍐欓偖鏀跨紪鐮侊紒",
            "m":"璇峰～鍐欐墜鏈哄彿鐮侊紒",
            "e":"閭鍦板潃鏍煎紡涓嶅锛�",
            "url": "璇峰～鍐欑綉鍧€锛�",
            "idCard": "璇峰～鍐欒韩浠借瘉鍙风爜",
            "decimals": "璇峰～鍐欐暟瀛�"
        },
        def:"璇峰～鍐欐纭俊鎭紒",
        undef:"datatype鏈畾涔夛紒",
        reck:"涓ゆ杈撳叆鐨勫唴瀹逛笉涓€鑷达紒",
        r:"閫氳繃淇℃伅楠岃瘉锛�",
        c:"姝ｅ湪妫€娴嬩俊鎭€�",
        s:"璇穥濉啓|閫夋嫨}{0|淇℃伅}锛�",
        v:"鎵€濉俊鎭病鏈夌粡杩囬獙璇侊紝璇风◢鍚庘€�",
        p:"姝ｅ湪鎻愪氦鏁版嵁鈥�"
    }
    $.Tipmsg=tipmsg;

    var Validform=function(forms,settings,inited){
        var settings=$.extend({},Validform.defaults,settings);
        settings.datatype && $.extend(Validform.util.dataType,settings.datatype);

        var brothers=this;
        brothers.tipmsg={w:{}};
        brothers.forms=forms;
        brothers.objects=[];

        //鍒涘缓瀛愬璞℃椂涓嶅啀缁戝畾浜嬩欢;
        if(inited===true){
            return false;
        }

        forms.each(function(){
            //宸茬粡缁戝畾浜嬩欢鏃惰烦杩囷紝閬垮厤浜嬩欢閲嶅缁戝畾;
            if(this.validform_inited=="inited"){return true;}
            this.validform_inited="inited";

            var curform=this;
            curform.settings=$.extend({},settings);

            var $this=$(curform);

            //闃叉琛ㄥ崟鎸夐挳鍙屽嚮鎻愪氦涓ゆ;
            curform.validform_status="normal"; //normal | posting | posted;

            //璁╂瘡涓猇alidform瀵硅薄閮借兘鑷畾涔塼ipmsg;
            $this.data("tipmsg",brothers.tipmsg);

            //bind the blur event;
            $this.delegate("[datatype]","blur",function(){
                //鍒ゆ柇鏄惁鏄湪鎻愪氦琛ㄥ崟鎿嶄綔鏃惰Е鍙戠殑楠岃瘉璇锋眰锛�
                var subpost=arguments[1];
                Validform.util.check.call(this,$this,subpost);
            });

            $this.delegate(":text","keypress",function(event){
                if(event.keyCode==13 && $this.find(":submit").length==0){
                    $this.submit();
                }
            });

            //鐐瑰嚮琛ㄥ崟鍏冪礌锛岄粯璁ゆ枃瀛楁秷澶辨晥鏋�;
            //琛ㄥ崟鍏冪礌鍊兼瘮杈冩椂鐨勪俊鎭彁绀哄寮�;
            //radio銆乧heckbox鎻愮ず淇℃伅澧炲己;
            //澶栬皟鎻掍欢鍒濆鍖�;
            Validform.util.enhance.call($this,curform.settings.tiptype,curform.settings.usePlugin,curform.settings.tipSweep);

            curform.settings.btnSubmit && $this.find(curform.settings.btnSubmit).bind("click",function(){
                $this.trigger("submit");
                return false;
            });

            $this.submit(function(){
                var subflag=Validform.util.submitForm.call($this,curform.settings);
                subflag === undef && (subflag=true);
                return subflag;
            });

            $this.find("[type='reset']").add($this.find(curform.settings.btnReset)).bind("click",function(){
                Validform.util.resetForm.call($this);
            });

        });

        //棰勫垱寤簆op box;
        if( settings.tiptype==1 || (settings.tiptype==2 || settings.tiptype==3) && settings.ajaxPost ){
            creatMsgbox();
        }
    }

    Validform.defaults={
        tiptype:1,
        tipSweep:false,
        showAllError:false,
        postonce:false,
        ajaxPost:false
    }

    Validform.util={
        dataType:{
            "*":/[\w\W]+/,
            "*6-16":/^[\w\W]{6,16}$/,
            "n":/^\d+$/,
            "n6-16":/^\d{6,16}$/,
            "s":/^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]+$/,
            "s6-18":/^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{6,18}$/,
            "p":/^[0-9]{6}$/,
            "m": /^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|17[0-9]{9}$|18[0-9]{9}$/,
            "e":/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
            "url": /^(\w+:\/\/)?\w+(\.\w+)+.*$/,
            "idCard": /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/,
            "decimals": /^(^\d+$)|(^[0-9]+(.[0-9]{1})?$)$/
        },

        toString:Object.prototype.toString,

        isEmpty:function(val){
            return val==="" || val===$.trim(this.attr("tip"));
        },

        getValue:function(obj){
            var inputval,
                curform=this;

            if(obj.is(":radio")){
                inputval=curform.find(":radio[name='"+obj.attr("name")+"']:checked").val();
                inputval= inputval===undef ? "" : inputval;
            }else if(obj.is(":checkbox")){
                inputval="";
                curform.find(":checkbox[name='"+obj.attr("name")+"']:checked").each(function(){
                    inputval +=$(this).val()+',';
                })
                inputval= inputval===undef ? "" : inputval;
            }else{
                inputval=obj.val();
            }
            inputval=$.trim(inputval);

            return Validform.util.isEmpty.call(obj,inputval) ? "" : inputval;
        },

        enhance:function(tiptype,usePlugin,tipSweep,addRule){
            var curform=this;

            //椤甸潰涓婁笉瀛樺湪鎻愮ず淇℃伅鐨勬爣绛炬椂锛岃嚜鍔ㄥ垱寤�;
            curform.find("[datatype]").each(function(){
                if(tiptype==2){
                    if($(this).parent().next().find(".Validform_checktip").length==0){
                        $(this).parent().next().append("<div class='Validform_checktip'/>");
                        $(this).siblings(".Validform_checktip").remove();
                    }
                }else if(tiptype==3 || tiptype==4){
                    if($(this).siblings(".Validform_checktip").length==0){
                        $(this).parent().append("<div class='Validform_checktip'/>");
                        $(this).parent().next().find(".Validform_checktip").remove();
                    }
                }
            })

            //琛ㄥ崟鍏冪礌鍊兼瘮杈冩椂鐨勪俊鎭彁绀哄寮�;
            curform.find("input[recheck]").each(function(){
                //宸茬粡缁戝畾浜嬩欢鏃惰烦杩�;
                if(this.validform_inited=="inited"){return true;}
                this.validform_inited="inited";

                var _this=$(this);
                var recheckinput=curform.find("input[name='"+$(this).attr("recheck")+"']");
                recheckinput.bind("keyup",function(){
                    if(recheckinput.val()==_this.val() && recheckinput.val() != ""){
                        if(recheckinput.attr("tip")){
                            if(recheckinput.attr("tip") == recheckinput.val()){return false;}
                        }
                        _this.trigger("blur");
                    }
                }).bind("blur",function(){
                    if(recheckinput.val()!=_this.val() && _this.val()!=""){
                        if(_this.attr("tip")){
                            if(_this.attr("tip") == _this.val()){return false;}
                        }
                        _this.trigger("blur");
                    }
                });
            });

            //hasDefaultText;
            curform.find("[tip]").each(function(){//tip鏄〃鍗曞厓绱犵殑榛樿鎻愮ず淇℃伅,杩欐槸鐐瑰嚮娓呯┖鏁堟灉;
                //宸茬粡缁戝畾浜嬩欢鏃惰烦杩�;
                if(this.validform_inited=="inited"){return true;}
                this.validform_inited="inited";

                var defaultvalue=$(this).attr("tip");
                var altercss=$(this).attr("altercss");
                $(this).focus(function(){
                    if($(this).val()==defaultvalue){
                        $(this).val('');
                        if(altercss){$(this).removeClass(altercss);}
                    }
                }).blur(function(){
                    if($.trim($(this).val())===''){
                        $(this).val(defaultvalue);
                        if(altercss){$(this).addClass(altercss);}
                    }
                });
            });

            //enhance info feedback for checkbox & radio;
            curform.find(":checkbox[datatype],:radio[datatype]").each(function(){
                //宸茬粡缁戝畾浜嬩欢鏃惰烦杩�;
                if(this.validform_inited=="inited"){return true;}
                this.validform_inited="inited";

                var _this=$(this);
                var name=_this.attr("name");
                curform.find("[name='"+name+"']").filter(":checkbox,:radio").bind("click",function(){
                    //閬垮厤澶氫釜浜嬩欢缁戝畾鏃剁殑鍙栧€兼粸鍚庨棶棰�;
                    setTimeout(function(){
                        _this.trigger("blur");
                    },0);
                });

            });

            //select multiple;
            curform.find("select[datatype][multiple]").bind("click",function(){
                var _this=$(this);
                setTimeout(function(){
                    _this.trigger("blur");
                },0);
            });

            //plugins here to start;
            Validform.util.usePlugin.call(curform,usePlugin,tiptype,tipSweep,addRule);
        },
        //鏂板紑鍙戠殑鎻掍欢鍦ㄨ繖閲屾敞鍐�
        usePlugin:function(plugin,tiptype,tipSweep,addRule){
            /*
             plugin:settings.usePlugin;
             tiptype:settings.tiptype;
             tipSweep:settings.tipSweep;
             addRule:鏄惁鍦╝ddRule鏃惰Е鍙�;
             */

            var curform=this,
                plugin=plugin || {};
            //swfupload;
            if(curform.find("input[plugin='swfupload']").length && typeof(swfuploadhandler) != "undefined"){

                var custom={
                    custom_settings:{
                        form:curform,
                        showmsg:function(msg,type,obj){
                            Validform.util.showmsg.call(curform,msg,tiptype,{obj:curform.find("input[plugin='swfupload']"),type:type,sweep:tipSweep});
                        }
                    }
                };

                custom=$.extend(true,{},plugin.swfupload,custom);

                curform.find("input[plugin='swfupload']").each(function(n){
                    if(this.validform_inited=="inited"){return true;}
                    this.validform_inited="inited";

                    $(this).val("");
                    swfuploadhandler.init(custom,n);
                });

            }

            //datepicker;
            if(curform.find("input[plugin='datepicker']").length && $.fn.datePicker){
                plugin.datepicker=plugin.datepicker || {};

                if(plugin.datepicker.format){
                    Date.format=plugin.datepicker.format;
                    delete plugin.datepicker.format;
                }
                if(plugin.datepicker.firstDayOfWeek){
                    Date.firstDayOfWeek=plugin.datepicker.firstDayOfWeek;
                    delete plugin.datepicker.firstDayOfWeek;
                }

                curform.find("input[plugin='datepicker']").each(function(n){
                    if(this.validform_inited=="inited"){return true;}
                    this.validform_inited="inited";

                    plugin.datepicker.callback && $(this).bind("dateSelected",function(){
                        var d=new Date( $.event._dpCache[this._dpId].getSelected()[0] ).asString(Date.format);
                        plugin.datepicker.callback(d,this);
                    });
                    $(this).datePicker(plugin.datepicker);
                });
            }

            //passwordstrength;
            if(curform.find("input[plugin*='passwordStrength']").length && $.fn.passwordStrength){
                plugin.passwordstrength=plugin.passwordstrength || {};
                plugin.passwordstrength.showmsg=function(obj,msg,type){
                    Validform.util.showmsg.call(curform,msg,tiptype,{obj:obj,type:type,sweep:tipSweep});
                };

                curform.find("input[plugin='passwordStrength']").each(function(n){
                    if(this.validform_inited=="inited"){return true;}
                    this.validform_inited="inited";

                    $(this).passwordStrength(plugin.passwordstrength);
                });
            }

            //jqtransform;
            if(addRule!="addRule" && plugin.jqtransform && $.fn.jqTransSelect){
                if(curform[0].jqTransSelected=="true"){return;};
                curform[0].jqTransSelected="true";

                var jqTransformHideSelect = function(oTarget){
                    var ulVisible = $('.jqTransformSelectWrapper ul:visible');
                    ulVisible.each(function(){
                        var oSelect = $(this).parents(".jqTransformSelectWrapper:first").find("select").get(0);
                        //do not hide if click on the label object associated to the select
                        if( !(oTarget && oSelect.oLabel && oSelect.oLabel.get(0) == oTarget.get(0)) ){$(this).hide();}
                    });
                };

                /* Check for an external click */
                var jqTransformCheckExternalClick = function(event) {
                    if ($(event.target).parents('.jqTransformSelectWrapper').length === 0) { jqTransformHideSelect($(event.target)); }
                };

                var jqTransformAddDocumentListener = function (){
                    $(document).mousedown(jqTransformCheckExternalClick);
                };

                if(plugin.jqtransform.selector){
                    curform.find(plugin.jqtransform.selector).filter('input:submit, input:reset, input[type="button"]').jqTransInputButton();
                    curform.find(plugin.jqtransform.selector).filter('input:text, input:password').jqTransInputText();
                    curform.find(plugin.jqtransform.selector).filter('input:checkbox').jqTransCheckBox();
                    curform.find(plugin.jqtransform.selector).filter('input:radio').jqTransRadio();
                    curform.find(plugin.jqtransform.selector).filter('textarea').jqTransTextarea();
                    if(curform.find(plugin.jqtransform.selector).filter("select").length > 0 ){
                        curform.find(plugin.jqtransform.selector).filter("select").jqTransSelect();
                        jqTransformAddDocumentListener();
                    }

                }else{
                    curform.jqTransform();
                }

                curform.find(".jqTransformSelectWrapper").find("li a").click(function(){
                    $(this).parents(".jqTransformSelectWrapper").find("select").trigger("blur");
                });
            }

        },

        getNullmsg:function(curform){
            var obj=this;
            var reg=/[\u4E00-\u9FA5\uf900-\ufa2da-zA-Z\s]+/g;
            var nullmsg;

            var label=curform[0].settings.label || ".Validform_label";
            label=obj.siblings(label).eq(0).text() || obj.siblings().find(label).eq(0).text() || obj.parent().siblings(label).eq(0).text() || obj.parent().siblings().find(label).eq(0).text();
            label=label.replace(/\s(?![a-zA-Z])/g,"").match(reg);
            label=label? label.join("") : [""];

            reg=/\{(.+)\|(.+)\}/;
            nullmsg=curform.data("tipmsg").s || tipmsg.s;

            if(label != ""){
                nullmsg=nullmsg.replace(/\{0\|(.+)\}/,label);
                if(obj.attr("recheck")){
                    nullmsg=nullmsg.replace(/\{(.+)\}/,"");
                    obj.attr("nullmsg",nullmsg);
                    return nullmsg;
                }
            }else{
                nullmsg=obj.is(":checkbox,:radio,select") ? nullmsg.replace(/\{0\|(.+)\}/,"") : nullmsg.replace(/\{0\|(.+)\}/,"$1");
            }
            nullmsg=obj.is(":checkbox,:radio,select") ? nullmsg.replace(reg,"$2") : nullmsg.replace(reg,"$1");

            obj.attr("nullmsg",nullmsg);
            return nullmsg;
        },

        getErrormsg:function(curform,datatype,recheck){
            var regxp=/^(.+?)((\d+)-(\d+))?$/,
                regxp2=/^(.+?)(\d+)-(\d+)$/,
                regxp3=/(.*?)\d+(.+?)\d+(.*)/,
                mac=datatype.match(regxp),
                temp,str;

            //濡傛灉鏄€间笉涓€鏍疯€屾姤閿�;
            if(recheck=="recheck"){
                str=curform.data("tipmsg").reck || tipmsg.reck;
                return str;
            }

            var tipmsg_w_ex=$.extend({},tipmsg.w,curform.data("tipmsg").w);

            //濡傛灉鍘熸潵灏辨湁锛岀洿鎺ユ樉绀鸿椤圭殑鎻愮ず淇℃伅;
            if(mac[0] in tipmsg_w_ex){
                return curform.data("tipmsg").w[mac[0]] || tipmsg.w[mac[0]];
            }

            //娌℃湁鐨勮瘽鍦ㄦ彁绀哄璞￠噷鏌ユ壘鐩镐技;
            for(var name in tipmsg_w_ex){
                if(name.indexOf(mac[1])!=-1 && regxp2.test(name)){
                    str=(curform.data("tipmsg").w[name] || tipmsg.w[name]).replace(regxp3,"$1"+mac[3]+"$2"+mac[4]+"$3");
                    curform.data("tipmsg").w[mac[0]]=str;

                    return str;
                }

            }

            return curform.data("tipmsg").def || tipmsg.def;
        },

        _regcheck:function(datatype,gets,obj,curform){
            var curform=curform,
                info=null,
                passed=false,
                reg=/\/.+\//g,
                regex=/^(.+?)(\d+)-(\d+)$/,
                type=3;//default set to wrong type, 2,3,4;

            //datatype鏈変笁绉嶆儏鍐碉細姝ｅ垯锛屽嚱鏁板拰鐩存帴缁戝畾鐨勬鍒�;

            //鐩存帴鏄鍒�;
            if(reg.test(datatype)){
                var regstr=datatype.match(reg)[0].slice(1,-1);
                var param=datatype.replace(reg,"");
                var rexp=RegExp(regstr,param);

                passed=rexp.test(gets);

                //function;
            }else if(Validform.util.toString.call(Validform.util.dataType[datatype])=="[object Function]"){
                passed=Validform.util.dataType[datatype](gets,obj,curform,Validform.util.dataType);
                if(passed === true || passed===undef){
                    passed = true;
                }else{
                    info= passed;
                    passed=false;
                }

                //鑷畾涔夋鍒�;
            }else{
                //鑷姩鎵╁睍datatype;
                if(!(datatype in Validform.util.dataType)){
                    var mac=datatype.match(regex),
                        temp;

                    if(!mac){
                        passed=false;
                        info=curform.data("tipmsg").undef||tipmsg.undef;
                    }else{
                        for(var name in Validform.util.dataType){
                            temp=name.match(regex);
                            if(!temp){continue;}
                            if(mac[1]===temp[1]){
                                var str=Validform.util.dataType[name].toString(),
                                    param=str.match(/\/[mgi]*/g)[1].replace("\/",""),
                                    regxp=new RegExp("\\{"+temp[2]+","+temp[3]+"\\}","g");
                                str=str.replace(/\/[mgi]*/g,"\/").replace(regxp,"{"+mac[2]+","+mac[3]+"}").replace(/^\//,"").replace(/\/$/,"");
                                Validform.util.dataType[datatype]=new RegExp(str,param);
                                break;
                            }
                        }
                    }
                }

                if(Validform.util.toString.call(Validform.util.dataType[datatype])=="[object RegExp]"){
                    passed=Validform.util.dataType[datatype].test(gets);
                }

            }


            if(passed){
                type=2;
                info=obj.attr("sucmsg") || curform.data("tipmsg").r||tipmsg.r;

                //瑙勫垯楠岃瘉閫氳繃鍚庯紝杩橀渶瑕佸缁戝畾recheck鐨勫璞¤繘琛屽€兼瘮杈�;
                if(obj.attr("recheck")){
                    var theother=curform.find("input[name='"+obj.attr("recheck")+"']:first");
                    if(gets!=theother.val()){
                        passed=false;
                        type=3;
                        info=obj.attr("errormsg")  || Validform.util.getErrormsg.call(obj,curform,datatype,"recheck");
                    }
                }
            }else{
                info=info || obj.attr("errormsg") || Validform.util.getErrormsg.call(obj,curform,datatype);

                //楠岃瘉涓嶉€氳繃涓斾负绌烘椂;
                if(Validform.util.isEmpty.call(obj,gets)){
                    info=obj.attr("nullmsg") || Validform.util.getNullmsg.call(obj,curform);
                }
            }

            return{
                passed:passed,
                type:type,
                info:info
            };

        },

        regcheck:function(datatype,gets,obj){
            /*
             datatype:datatype;
             gets:inputvalue;
             obj:input object;
             */
            var curform=this,
                info=null,
                passed=false,
                type=3;//default set to wrong type, 2,3,4;

            //ignore;
            if(obj.attr("ignore")==="ignore" && Validform.util.isEmpty.call(obj,gets)){
                if(obj.data("cked")){
                    info="";
                }

                return {
                    passed:true,
                    type:4,
                    info:info
                };
            }

            obj.data("cked","cked");//do nothing if is the first time validation triggered;

            var dtype=Validform.util.parseDatatype(datatype);
            var res;
            for(var eithor=0; eithor<dtype.length; eithor++){
                for(var dtp=0; dtp<dtype[eithor].length; dtp++){
                    res=Validform.util._regcheck(dtype[eithor][dtp],gets,obj,curform);
                    if(!res.passed){
                        break;
                    }
                }
                if(res.passed){
                    break;
                }
            }
            return res;

        },

        parseDatatype:function(datatype){
            /*
             瀛楃涓查噷闈㈠彧鑳藉惈鏈変竴涓鍒欒〃杈惧紡;
             Datatype鍚嶇О蹇呴』鏄瓧姣嶏紝鏁板瓧銆佷笅鍒掔嚎鎴�*鍙风粍鎴�;
             datatype="/regexp/|phone|tel,s,e|f,e";
             ==>[["/regexp/"],["phone"],["tel","s","e"],["f","e"]];
             */

            var reg=/\/.+?\/[mgi]*(?=(,|$|\||\s))|[\w\*-]+/g,
                dtype=datatype.match(reg),
                sepor=datatype.replace(reg,"").replace(/\s*/g,"").split(""),
                arr=[],
                m=0;

            arr[0]=[];
            arr[0].push(dtype[0]);
            for(var n=0;n<sepor.length;n++){
                if(sepor[n]=="|"){
                    m++;
                    arr[m]=[];
                }
                arr[m].push(dtype[n+1]);
            }

            return arr;
        },

        showmsg:function(msg,type,o,triggered){
            /*
             msg:鎻愮ず鏂囧瓧;
             type:鎻愮ず淇℃伅鏄剧ず鏂瑰紡;
             o:{obj:褰撳墠瀵硅薄, type:1=>姝ｅ湪妫€娴� | 2=>閫氳繃, sweep:true | false},
             triggered:鍦╞lur鎴栨彁浜よ〃鍗曡Е鍙戠殑楠岃瘉涓紝鏈変簺鎯呭喌涓嶉渶瑕佹樉绀烘彁绀烘枃瀛楋紝濡傝嚜瀹氫箟寮瑰嚭鎻愮ず妗嗙殑鏄剧ず鏂瑰紡锛屼笉闇€瑕佹瘡娆lur鏃跺氨椹笂寮瑰嚭鎻愮ず;

             tiptype:1\2\3鏃堕兘鏈夊潙鑳戒細寮瑰嚭鑷畾涔夋彁绀烘
             tiptype:1鏃跺湪triggered bycheck鏃朵笉寮规
             tiptype:2\3鏃跺湪ajax鏃跺脊妗�
             tipSweep涓簍rue鏃跺湪triggered bycheck鏃朵笉瑙﹀彂showmsg锛屼絾ajax鍑洪敊鐨勬儏鍐典笅瑕佹彁绀�
             */

            //濡傛灉msg涓簎ndefined锛岄偅涔堝氨娌″繀瑕佹墽琛屽悗闈㈢殑鎿嶄綔锛宨gnore鏈夊彲鑳戒細鍑虹幇杩欐儏鍐�;
            if(msg==undef){return;}

            //tipSweep涓簍rue锛屼笖褰撳墠涓嶆槸澶勪簬閿欒鐘舵€佹椂锛宐lur浜嬩欢涓嶈Е鍙戜俊鎭樉绀�;
            if(triggered=="bycheck" && o.sweep && (o.obj && !o.obj.is(".Validform_error") || typeof type == "function")){return;}

            $.extend(o,{curform:this});

            if(typeof type == "function"){
                type(msg,o,Validform.util.cssctl);
                return;
            }

            if(type==1 || triggered=="byajax" && type!=4){
                msgobj.find(".Validform_info").html(msg);
            }

            //tiptypt=1鏃讹紝blur瑙﹀彂showmsg锛岄獙璇佹槸鍚﹂€氳繃閮戒笉寮规锛屾彁浜よ〃鍗曡Е鍙戠殑璇濓紝鍙楠岃瘉鍑洪敊锛屽氨寮规;
            if(type==1 && triggered!="bycheck" && o.type!=2 || triggered=="byajax" && type!=4){
                msghidden=false;
                msgobj.find(".iframe").css("height",msgobj.outerHeight());
                msgobj.show();
                setCenter(msgobj,100);
            }

            if(type==2 && o.obj){
                o.obj.parent().next().find(".Validform_checktip").html(msg);
                Validform.util.cssctl(o.obj.parent().next().find(".Validform_checktip"),o.type);
            }

            if((type==3 || type==4) && o.obj){
                o.obj.siblings(".Validform_checktip").html(msg);
                Validform.util.cssctl(o.obj.siblings(".Validform_checktip"),o.type);
            }

        },

        cssctl: function (obj, status) {
            obj.append('<p class="dec"><s class="dec1">鈼�</s><s class="dec2">鈼�</s></p>');
            obj.show();//鏄剧ず闅愯棌鐨勬彁绀烘 <p class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></p>
            switch(status){
                case 1:
                    obj.removeClass("Validform_right Validform_wrong").addClass("Validform_checktip Validform_loading");//checking;
                    break;
                case 2:
                    obj.hide();
                    obj.removeClass("Validform_wrong Validform_loading").addClass("Validform_checktip Validform_right");//passed;
                    break;
                case 4:
                    obj.removeClass("Validform_right Validform_wrong Validform_loading").addClass("Validform_checktip");//for ignore;
                    break;
                default:
                    obj.removeClass("Validform_right Validform_loading").addClass("Validform_checktip Validform_wrong");//wrong;
            }
            //obj.fadeOut(3000);//鎻愮ず妗�3绉掑悗鑷姩闅愯棌
        },

        check:function(curform,subpost,bool){
            /*
             妫€娴嬪崟涓〃鍗曞厓绱�;
             楠岃瘉閫氳繃杩斿洖true锛屽惁鍒欒繑鍥瀎alse銆佸疄鏃堕獙璇佽繑鍥炲€间负ajax;
             bool锛屼紶鍏rue鍒欏彧妫€娴嬩笉鏄剧ず鎻愮ず淇℃伅;
             */
            var settings=curform[0].settings;
            var subpost=subpost || "";
            var inputval=Validform.util.getValue.call(curform,$(this));

            //闅愯棌鎴栫粦瀹歞ataIgnore鐨勮〃鍗曞璞′笉鍋氶獙璇�;
            if(settings.ignoreHidden && $(this).is(":hidden") || $(this).data("dataIgnore")==="dataIgnore"){
                return true;
            }

            //dragonfly=true鏃讹紝娌℃湁缁戝畾ignore锛屽€间负绌轰笉鍋氶獙璇侊紝浣嗛獙璇佷笉閫氳繃;
            if(settings.dragonfly && !$(this).data("cked") && Validform.util.isEmpty.call($(this),inputval) && $(this).attr("ignore")!="ignore"){
                return false;
            }

            var flag=Validform.util.regcheck.call(curform,$(this).attr("datatype"),inputval,$(this));

            //鍊兼病鍙樺寲涓嶅仛妫€娴嬶紝杩欐椂瑕佽€冭檻recheck鎯呭喌;
            //涓嶆槸鍦ㄦ彁浜よ〃鍗曟椂瑙﹀彂鐨刟jax楠岃瘉;
            if(inputval==this.validform_lastval && !$(this).attr("recheck") && subpost==""){
                return flag.passed ? true : false;
            }

            this.validform_lastval=inputval;//瀛樺偍褰撳墠鍊�;

            var _this;
            errorobj=_this=$(this);

            if(!flag.passed){
                //鍙栨秷姝ｅ湪杩涜鐨刟jax楠岃瘉;
                Validform.util.abort.call(_this[0]);

                if(!bool){
                    //浼犲叆"bycheck"锛屾寚绀哄綋鍓嶆槸check鏂规硶閲岃皟鐢ㄧ殑锛屽綋tiptype=1鏃讹紝blur浜嬩欢涓嶈瑙﹀彂閿欒淇℃伅鏄剧ず;
                    Validform.util.showmsg.call(curform,flag.info,settings.tiptype,{obj:$(this),type:flag.type,sweep:settings.tipSweep},"bycheck");

                    !settings.tipSweep && _this.addClass("Validform_error");
                }
                return false;
            }

            //楠岃瘉閫氳繃鐨勮瘽锛屽鏋滅粦瀹氭湁ajaxurl锛岃鎵цajax妫€娴�;
            //褰搃gnore="ignore"鏃讹紝涓虹┖鍊煎彲浠ラ€氳繃楠岃瘉锛岃繖鏃朵笉闇€瑕乤jax妫€娴�;
            var ajaxurl=$(this).attr("ajaxurl");
            if(ajaxurl && !Validform.util.isEmpty.call($(this),inputval) && !bool){
                var inputobj=$(this);

                //褰撴彁浜よ〃鍗曟椂锛岃〃鍗曚腑鐨勬煇椤瑰凡缁忓湪鎵цajax妫€娴嬶紝杩欐椂闇€瑕佽璇ラ」ajax缁撴潫鍚庣户缁彁浜よ〃鍗�;
                if(subpost=="postform"){
                    inputobj[0].validform_subpost="postform";
                }else{
                    inputobj[0].validform_subpost="";
                }

                if(inputobj[0].validform_valid==="posting" && inputval==inputobj[0].validform_ckvalue){return "ajax";}

                inputobj[0].validform_valid="posting";
                inputobj[0].validform_ckvalue=inputval;
                Validform.util.showmsg.call(curform,curform.data("tipmsg").c||tipmsg.c,settings.tiptype,{obj:inputobj,type:1,sweep:settings.tipSweep},"bycheck");

                Validform.util.abort.call(_this[0]);

                var ajaxsetup=$.extend(true,{},settings.ajaxurl || {});

                var localconfig={
                    type: "POST",
                    cache:false,
                    url: ajaxurl,
                    data: "param="+encodeURIComponent(inputval)+"&name="+encodeURIComponent($(this).attr("name")),
                    success: function(data){
                        if($.trim(data.status)==="y"){
                            inputobj[0].validform_valid="true";
                            data.info && inputobj.attr("sucmsg",data.info);
                            Validform.util.showmsg.call(curform,inputobj.attr("sucmsg") || curform.data("tipmsg").r||tipmsg.r,settings.tiptype,{obj:inputobj,type:2,sweep:settings.tipSweep},"bycheck");
                            _this.removeClass("Validform_error");
                            errorobj=null;
                            if(inputobj[0].validform_subpost=="postform"){
                                curform.trigger("submit");
                            }
                        }else{
                            inputobj[0].validform_valid=data.info;
                            Validform.util.showmsg.call(curform,data.info,settings.tiptype,{obj:inputobj,type:3,sweep:settings.tipSweep});
                            _this.addClass("Validform_error");
                        }
                        _this[0].validform_ajax=null;
                    },
                    error: function(data){
                        if(data.status=="200"){
                            if(data.responseText=="y"){
                                ajaxsetup.success({"status":"y"});
                            }else{
                                ajaxsetup.success({"status":"n","info":data.responseText});
                            }
                            return false;
                        }

                        //姝ｅ湪妫€娴嬫椂锛岃妫€娴嬬殑鏁版嵁鍙戠敓鏀瑰彉锛岃繖鏃惰缁堟褰撳墠鐨刟jax銆備笉鏄繖绉嶆儏鍐靛紩璧风殑ajax閿欒锛岄偅涔堟樉绀虹浉鍏抽敊璇俊鎭�;
                        if(data.statusText!=="abort"){
                            var msg="status: "+data.status+"; statusText: "+data.statusText;

                            Validform.util.showmsg.call(curform,msg,settings.tiptype,{obj:inputobj,type:3,sweep:settings.tipSweep});
                            _this.addClass("Validform_error");
                        }

                        inputobj[0].validform_valid=data.statusText;
                        _this[0].validform_ajax=null;

                        //localconfig.error杩斿洖true琛ㄧず杩橀渶瑕佹墽琛宼emp_err;
                        return true;
                    }
                }

                if(ajaxsetup.success){
                    var temp_suc=ajaxsetup.success;
                    ajaxsetup.success=function(data){
                        localconfig.success(data);
                        temp_suc(data,inputobj);
                    }
                }

                if(ajaxsetup.error){
                    var temp_err=ajaxsetup.error;
                    ajaxsetup.error=function(data){
                        //localconfig.error杩斿洖false琛ㄧず涓嶉渶瑕佹墽琛宼emp_err;
                        localconfig.error(data) && temp_err(data,inputobj);
                    }
                }

                ajaxsetup=$.extend({},localconfig,ajaxsetup,{dataType:"json"});
                _this[0].validform_ajax=$.ajax(ajaxsetup);

                return "ajax";
            }else if(ajaxurl && Validform.util.isEmpty.call($(this),inputval)){
                Validform.util.abort.call(_this[0]);
                _this[0].validform_valid="true";
            }

            if(!bool){
                Validform.util.showmsg.call(curform,flag.info,settings.tiptype,{obj:$(this),type:flag.type,sweep:settings.tipSweep},"bycheck");
                _this.removeClass("Validform_error");
            }
            errorobj=null;

            return true;

        },

        submitForm:function(settings,flg,url,ajaxPost,sync){
            /*
             flg===true鏃惰烦杩囬獙璇佺洿鎺ユ彁浜�;
             ajaxPost==="ajaxPost"鎸囩ず褰撳墠琛ㄥ崟浠jax鏂瑰紡鎻愪氦;
             */
            var curform=this;

            //琛ㄥ崟姝ｅ湪鎻愪氦鏃剁偣鍑绘彁浜ゆ寜閽笉鍋氬弽搴�;
            if(curform[0].validform_status==="posting"){return false;}

            //瑕佹眰鍙兘鎻愪氦涓€娆℃椂;
            if(settings.postonce && curform[0].validform_status==="posted"){return false;}

            var beforeCheck=settings.beforeCheck && settings.beforeCheck(curform);
            if(beforeCheck===false){return false;}

            var flag=true,
                inflag;

            curform.find("[datatype]").each(function(){
                //璺宠繃楠岃瘉;
                if(flg){
                    return false;
                }

                //闅愯棌鎴栫粦瀹歞ataIgnore鐨勮〃鍗曞璞′笉鍋氶獙璇�;
                if(settings.ignoreHidden && $(this).is(":hidden") || $(this).data("dataIgnore")==="dataIgnore"){
                    return true;
                }

                var inputval=Validform.util.getValue.call(curform,$(this)),
                    _this;
                errorobj=_this=$(this);

                inflag=Validform.util.regcheck.call(curform,$(this).attr("datatype"),inputval,$(this));

                if(!inflag.passed){
                    Validform.util.showmsg.call(curform,inflag.info,settings.tiptype,{obj:$(this),type:inflag.type,sweep:settings.tipSweep});
                    _this.addClass("Validform_error");

                    if(!settings.showAllError){
                        _this.focus();
                        flag=false;
                        return false;
                    }

                    flag && (flag=false);
                    return true;
                }

                //褰搃gnore="ignore"鏃讹紝涓虹┖鍊煎彲浠ラ€氳繃楠岃瘉锛岃繖鏃朵笉闇€瑕乤jax妫€娴�;
                if($(this).attr("ajaxurl") && !Validform.util.isEmpty.call($(this),inputval)){
                    if(this.validform_valid!=="true"){
                        var thisobj=$(this);
                        Validform.util.showmsg.call(curform,curform.data("tipmsg").v||tipmsg.v,settings.tiptype,{obj:thisobj,type:3,sweep:settings.tipSweep});
                        _this.addClass("Validform_error");

                        thisobj.trigger("blur",["postform"]);//continue the form post;

                        if(!settings.showAllError){
                            flag=false;
                            return false;
                        }

                        flag && (flag=false);
                        return true;
                    }
                }else if($(this).attr("ajaxurl") && Validform.util.isEmpty.call($(this),inputval)){
                    Validform.util.abort.call(this);
                    this.validform_valid="true";
                }

                Validform.util.showmsg.call(curform,inflag.info,settings.tiptype,{obj:$(this),type:inflag.type,sweep:settings.tipSweep});
                _this.removeClass("Validform_error");
                errorobj=null;
            });

            if(settings.showAllError){
                curform.find(".Validform_error:first").focus();
            }

            if(flag){
                var beforeSubmit=settings.beforeSubmit && settings.beforeSubmit(curform);
                if(beforeSubmit===false){return false;}

                curform[0].validform_status="posting";

                if(settings.ajaxPost || ajaxPost==="ajaxPost"){
                    //鑾峰彇閰嶇疆鍙傛暟;
                    var ajaxsetup=$.extend(true,{},settings.ajaxpost || {});
                    //鏈夊彲鑳介渶瑕佸姩鎬佺殑鏀瑰彉鎻愪氦鍦板潃锛屾墍浠ユ妸action鎵€鎸囧畾鐨剈rl灞傜骇璁句负鏈€浣�;
                    ajaxsetup.url=url || ajaxsetup.url || settings.url || curform.attr("action");

                    //byajax锛歛jax鏃讹紝tiptye涓�1銆�2鎴�3闇€瑕佸脊鍑烘彁绀烘;
                    Validform.util.showmsg.call(curform,curform.data("tipmsg").p||tipmsg.p,settings.tiptype,{obj:curform,type:1,sweep:settings.tipSweep},"byajax");

                    //鏂规硶閲岀殑浼樺厛绾ц楂�;
                    //鏈塽ndefined鎯呭喌;
                    if(sync){
                        ajaxsetup.async=false;
                    }else if(sync===false){
                        ajaxsetup.async=true;
                    }

                    if(ajaxsetup.success){
                        var temp_suc=ajaxsetup.success;
                        ajaxsetup.success=function(data){
                            settings.callback && settings.callback(data);
                            curform[0].validform_ajax=null;
                            if($.trim(data.status)==="y"){
                                curform[0].validform_status="posted";
                            }else{
                                curform[0].validform_status="normal";
                            }

                            temp_suc(data,curform);
                        }
                    }

                    if(ajaxsetup.error){
                        var temp_err=ajaxsetup.error;
                        ajaxsetup.error=function(data){
                            settings.callback && settings.callback(data);
                            curform[0].validform_status="normal";
                            curform[0].validform_ajax=null;

                            temp_err(data,curform);
                        }
                    }

                    var localconfig={
                        type: "POST",
                        async:true,
                        data: curform.serializeArray(),
                        success: function(data){
                            if($.trim(data.status)==="y"){
                                //鎴愬姛鎻愪氦;
                                curform[0].validform_status="posted";
                                Validform.util.showmsg.call(curform,data.info,settings.tiptype,{obj:curform,type:2,sweep:settings.tipSweep},"byajax");
                            }else{
                                //鎻愪氦鍑洪敊;
                                curform[0].validform_status="normal";
                                Validform.util.showmsg.call(curform,data.info,settings.tiptype,{obj:curform,type:3,sweep:settings.tipSweep},"byajax");
                            }

                            settings.callback && settings.callback(data);
                            curform[0].validform_ajax=null;
                        },
                        error: function(data){
                            var msg="status: "+data.status+"; statusText: "+data.statusText;

                            Validform.util.showmsg.call(curform,msg,settings.tiptype,{obj:curform,type:3,sweep:settings.tipSweep},"byajax");

                            settings.callback && settings.callback(data);
                            curform[0].validform_status="normal";
                            curform[0].validform_ajax=null;
                        }
                    }

                    ajaxsetup=$.extend({},localconfig,ajaxsetup,{dataType:"json"});

                    curform[0].validform_ajax=$.ajax(ajaxsetup);

                }else{
                    if(!settings.postonce){
                        curform[0].validform_status="normal";
                    }

                    var url=url || settings.url;
                    if(url){
                        curform.attr("action",url);
                    }

                    return settings.callback && settings.callback(curform);
                }
            }

            return false;

        },

        resetForm:function(){
            var brothers=this;
            brothers.each(function(){
                this.reset && this.reset();
                this.validform_status="normal";
            });

            brothers.find(".Validform_right").text("");
            brothers.find(".passwordStrength").children().removeClass("bgStrength");
            brothers.find(".Validform_checktip").removeClass("Validform_wrong Validform_right Validform_loading");
            brothers.find(".Validform_error").removeClass("Validform_error");
            brothers.find("[datatype]").removeData("cked").removeData("dataIgnore").each(function(){
                this.validform_lastval=null;
            });
            brothers.eq(0).find("input:first").focus();
        },

        abort:function(){
            if(this.validform_ajax){
                this.validform_ajax.abort();
            }
        }

    }

    $.Datatype=Validform.util.dataType;

    Validform.prototype={
        dataType:Validform.util.dataType,

        eq:function(n){
            var obj=this;

            if(n>=obj.forms.length){
                return null;
            }

            if(!(n in obj.objects)){
                obj.objects[n]=new Validform($(obj.forms[n]).get(),{},true);
            }

            return obj.objects[n];

        },

        resetStatus:function(){
            var obj=this;
            $(obj.forms).each(function(){
                this.validform_status="normal";
            });

            return this;
        },

        setStatus:function(status){
            var obj=this;
            $(obj.forms).each(function(){
                this.validform_status=status || "posting";
            });

            return this;
        },

        getStatus:function(){
            var obj=this;
            var status=$(obj.forms)[0].validform_status;

            return status;
        },

        ignore:function(selector){
            var obj=this;
            var selector=selector || "[datatype]"

            $(obj.forms).find(selector).each(function(){
                $(this).data("dataIgnore","dataIgnore").removeClass("Validform_error");
            });

            return this;
        },

        unignore:function(selector){
            var obj=this;
            var selector=selector || "[datatype]"

            $(obj.forms).find(selector).each(function(){
                $(this).removeData("dataIgnore");
            });

            return this;
        },

        addRule:function(rule){
            /*
             rule => [{
             ele:"#id",
             datatype:"*",
             errormsg:"鍑洪敊鎻愮ず鏂囧瓧锛�",
             nullmsg:"涓虹┖鏃剁殑鎻愮ず鏂囧瓧锛�",
             tip:"榛樿鏄剧ず鐨勬彁绀烘枃瀛�",
             altercss:"gray",
             ignore:"ignore",
             ajaxurl:"valid.php",
             recheck:"password",
             plugin:"passwordStrength"
             },{},{},...]
             */
            var obj=this;
            var rule=rule || [];

            for(var index=0; index<rule.length; index++){
                var o=$(obj.forms).find(rule[index].ele);
                for(var attr in rule[index]){
                    attr !=="ele" && o.attr(attr,rule[index][attr]);
                }
            }

            $(obj.forms).each(function(){
                var $this=$(this);
                Validform.util.enhance.call($this,this.settings.tiptype,this.settings.usePlugin,this.settings.tipSweep,"addRule");
            });

            return this;
        },

        ajaxPost:function(flag,sync,url){
            var obj=this;

            $(obj.forms).each(function(){
                //鍒涘缓pop box;
                if( this.settings.tiptype==1 || this.settings.tiptype==2 || this.settings.tiptype==3 ){
                    creatMsgbox();
                }

                Validform.util.submitForm.call($(obj.forms[0]),this.settings,flag,url,"ajaxPost",sync);
            });

            return this;
        },

        submitForm:function(flag,url){
            /*flag===true鏃朵笉鍋氶獙璇佺洿鎺ユ彁浜�*/


            var obj=this;

            $(obj.forms).each(function(){
                var subflag=Validform.util.submitForm.call($(this),this.settings,flag,url);
                subflag === undef && (subflag=true);
                if(subflag===true){
                    this.submit();
                }
            });

            return this;
        },

        resetForm:function(){
            var obj=this;
            Validform.util.resetForm.call($(obj.forms));

            return this;
        },

        abort:function(){
            var obj=this;
            $(obj.forms).each(function(){
                Validform.util.abort.call(this);
            });

            return this;
        },

        check:function(bool,selector){
            /*
             bool锛氫紶鍏rue锛屽彧妫€娴嬩笉鏄剧ず鎻愮ず淇℃伅;
             */

            var selector=selector || "[datatype]",
                obj=this,
                curform=$(obj.forms),
                flag=true;

            curform.find(selector).each(function(){
                Validform.util.check.call(this,curform,"",bool) || (flag=false);
            });

            return flag;
        },

        config:function(setup){
            /*
             config={
             url:"ajaxpost.php",//鎸囧畾浜唘rl鍚庯紝鏁版嵁浼氭彁浜ゅ埌杩欎釜鍦板潃;
             ajaxurl:{
             timeout:1000,
             ...
             },
             ajaxpost:{
             timeout:1000,
             ...
             }
             }
             */
            var obj=this;
            setup=setup || {};
            $(obj.forms).each(function(){
                var $this=$(this);
                this.settings=$.extend(true,this.settings,setup);
                Validform.util.enhance.call($this,this.settings.tiptype,this.settings.usePlugin,this.settings.tipSweep);
            });

            return this;
        }
    }

    $.fn.Validform=function(settings){
        return new Validform(this,settings);
    };

    function setCenter(obj,time){
        var left=($(window).width()-obj.outerWidth())/2,
            top=($(window).height()-obj.outerHeight())/2,

            top=(document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop)+(top>0?top:0);

        obj.css({
            left:left
        }).animate({
            top : top
        },{ duration:time , queue:false });
    }

    function creatMsgbox(){
        if($("#Validform_msg").length!==0){return false;}
        msgobj=$('<div id="Validform_msg"><div class="Validform_title">'+tipmsg.tit+'<a class="Validform_close" href="javascript:void(0);">&chi;</a></div><div class="Validform_info"></div><div class="iframe"><iframe frameborder="0" scrolling="no" height="100%" width="100%"></iframe></div></div>').appendTo("body");//鎻愮ず淇℃伅妗�;
        msgobj.find("a.Validform_close").click(function(){
            msgobj.hide();
            msghidden=true;
            if(errorobj){
                errorobj.focus().addClass("Validform_error");
            }
            return false;
        }).focus(function(){this.blur();});

        $(window).bind("scroll resize",function(){
            !msghidden && setCenter(msgobj,400);
        });
    };

    //鍏敤鏂规硶鏄剧ず&鍏抽棴淇℃伅鎻愮ず妗�;
    $.Showmsg=function(msg){
        creatMsgbox();
        Validform.util.showmsg.call(win,msg,1,{});
    };

    $.Hidemsg=function(){
        msgobj.hide();
        msghidden=true;
    };

})(jQuery, window);

//瀵嗙爜绛夌骇鏄剧ず鎻掍欢
(function ($) {
    $.fn.passwordStrength = function (settings) {
        settings = $.extend({}, $.fn.passwordStrength.defaults, settings);
        this.each(function () {
            var d = $(this),
                e = 0,
                c = false,
                f = $(this).parents("form").find(".passwordStrength");
            d.bind("keyup blur", function () {
                e = $.fn.passwordStrength.ratepasswd(d.val(), settings);
                e >= 0 && c == false && (c = true);
                f.find("label").attr("class", "str5");
                if (e < 35 && e >= 0) {
                    f.find("label").eq(0).attr("class", "str1");
                    f.find("i").html("&#12288;寮�");
                } else {
                    if (e < 60 && e >= 35) {
                        f.find("label").eq(0).attr("class", "str1");
                        f.find("label").eq(1).attr("class", "str2");
                        f.find("i").html("&#12288;涓�");
                    } else {
                        if (e >= 60) {
                            f.find("label").eq(0).attr("class", "str1");
                            f.find("label").eq(1).attr("class", "str2");
                            f.find("label").eq(2).attr("class", "str3");
                            f.find("i").html("&#12288;楂�");
                        }
                    }
                }
                if (c && (d.val().length < settings.minLen || d.val().length > settings.maxLen)) {
                    settings.showmsg(d, d.attr("errormsg"), 3)
                } else {
                    if (c) {
                        settings.showmsg(d, "", 2)
                    }
                }
                settings.trigger(d, !(e >= 0))
            })
        })
    };
    $.fn.passwordStrength.ratepasswd = function (c, d) {
        var b = c.length,
            e;
        if (b >= d.minLen && b <= d.maxLen) {
            e = $.fn.passwordStrength.checkStrong(c)
        } else {
            e = -1
        }
        return e / 4 * 100
    };
    $.fn.passwordStrength.checkStrong = function (d) {
        var e = 0,
            b = d.length;
        for (var c = 0; c < b; c++) {
            e |= $.fn.passwordStrength.charMode(d.charCodeAt(c))
        }
        return $.fn.passwordStrength.bitTotal(e)
    };
    $.fn.passwordStrength.charMode = function (b) {
        if (b >= 48 && b <= 57) {
            return 1
        } else {
            if (b >= 65 && b <= 90) {
                return 2
            } else {
                if (b >= 97 && b <= 122) {
                    return 4
                } else {
                    return 8
                }
            }
        }
    };
    $.fn.passwordStrength.bitTotal = function (b) {
        var d = 0;
        for (var c = 0; c < 4; c++) {
            if (b & 1) {
                d++
            }
            b >>>= 1
        }
        return d
    };
    $.fn.passwordStrength.defaults = {
        minLen: 0,
        maxLen: 30,
        trigger: $.noop
    }
})(jQuery);