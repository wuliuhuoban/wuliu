<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/12
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>走进飞毛腿</title>
</head>
<body>
<%@include file="head.jsp"%>

<div id="content">
  <div class="contentwarp clearfix">
    <%--下面左半部分布局--%>
    <div class="fl w190" style="float: left;">
      <div class="servicepd">
        <div class="title1">
          <div class="titleicon">
            <img src="images/introduce/companyicon.png" width="29" height="26" />
          </div>
          <div class="text">走进飞毛腿</div>
        </div>
        <div>
          <div class="vtitle"><em class="v  "></em>企业介绍</div>
          <div class="vcon" style="display: block ">
            <ul class="vconlist clearfix">
              <li id="m1" onclick="go(1)" class="select" ><a href="javascript:;;">企业概况</a></li>
              <li id="m2" onclick="go(2)" class="select"><a href="javascript:;;">网络发展</a></li>
              <li id="m3" onclick="go(3)" class="select"><a href="javascript:;;">双创模式</a></li>
              <li id="m4" onclick="go(4)" class="select"><a href="javascript:;;">领导关怀</a></li>
            </ul>
          </div>
        </div>

        <div class="servicect mt20">
          <div class="title1">
            <div class="titleicon">
              <img src="images/service/serviceicon-2.png" width="29" height="26" />
            </div>
            <div class="text">客户服务</div>
          </div>
          <div class="servicectbd">
            <ul class="clearfix mb15">

              <li class="firstChild">
                <div>
                  <a href="weijinpin">
                    <img src="images/base/weijin.png" width="39" height="38" /></a>
                </div>

                <h5><a href="weijinpin">违禁品</a></h5>
              </li>

              <li>
                <div>
                  <a href="shixiao">
                    <img src="images/base/money.png" width="39" height="38" /></a>
                </div>
                <h5><a href="shixiao">报价时效</a></h5>
              </li>
              <li class="firstChild">
                <div>
                  <a href="serviceGuide">
                    <img src="images/service/pdicon-7.png" width="39" height="38"></a>
                </div>
                <h5><a href="serviceGuide">服务指南</a></h5>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <%--下面右半部的布局--%>
    <div class="fr w770">
      <div class="ad">
        <img src="images/introduce/aboutad1.jpg" width="770" height="173" />
      </div>
      <div class="clearfix mt20 textareas serviceProduct">
        <div class="fl w550" id="c1" style="float: left; display: block;">
          <div class="title">
            <%--<div class="titleicon1">
              <img src="images/introduce/company.png" width="26" height="22" />
            </div>--%>
            <h3>企业概况</h3>
          </div>
          <div class="listcontent">
            <div class="comanyabout clearfix">
              <div class="left">
                <p>飞毛腿速递是一家集快递、物流、电商、投资等业务于一体的大型集团公司，注册商标“飞毛腿®”、“FMT®”。飞毛腿被业内和国际顶级投资机构誉为快递行业“结构治理最健康，企业氛围最优秀，成本控制最好，发展最稳健，潜力爆发最大”的企业。</p>
                <p>十多年来，飞毛腿速递紧抓邮政体制改革、经济转型升级、产业结构调整、电商蓬勃发展等历史性机遇，依托“众创、众包、众扶、众筹”的双创模式，激发全网近30万员工创业、创新的热情和激情，不断优化经营管理、提升服务水平，助力各行各业提升物流效率、降低成本。目前，飞毛腿速递业务规模已跃居行业首位，服务质量名列前茅。</p>
                <p>飞毛腿在快递行业里第一个开通跨省际网络班车，第一个推行有偿派送机制，第一个建立二级中转费结算体系，第一个实施中转操作的差额结算，第一个建立员工持股的股份制车队，第一个推行中通大家园和“亲情1+1”员工福利政策，第一个实施全国网络股份制改革。</p>
                <p>2017年9月1日，飞毛腿快递成功登陆美国纽约证券交易所，创当年美国证券市场最大IPO，也是继阿里巴巴2014年赴美上市以来最大规模的中国企业赴美IPO。</p>
              </div>
            </div>
            <div class="clearfix mt20"></div>
          </div>
        </div>
        <div  class="fl w550" id="c2" style="float: left; float: left;display: none;">
          <div class="title">
            <h3>网络发展</h3>
          </div>
          <div class="listcontent">
            <div class="comanyabout clearfix">
              <div class="left">
                <p>截至2016年12月31日，飞毛腿速递的服务网点达到26000个，网络合作伙伴超过9100个，干线运输车辆超过4200辆，自营卡车数量2930多辆，其中超过1145辆为15-17米的高运力卡车，拥有分拨中心75个。网络通达中国96.6%以上的市县，乡镇覆盖率超过77%。至“十三五”末，飞毛腿将开通国内所有市县，通达全球多个国家和地区。</p>
              </div>
            </div>
            <div class="clearfix mt20"></div>
          </div>
        </div>
        <div  class="fl w550" id="c3" style="float: left; float: left;display: none;">
          <div class="title">
            <h3>双创模式</h3>
          </div>
          <div class="listcontent">
            <div class="comanyabout clearfix">
              <div class="left">
                <p>
                  飞毛腿发展平台是“众创、众筹、众包、众扶”模式的集中体现，是符合中国国情、适应“互联网+”的全新商业模式，具备帮助更多人就业、创业并实现美好新生活，“用我们的产品造就更多人的幸福”的“利他主义”特征：能最大限度激发创业者的激情和无限的想象力与创造力；最具区域运作的灵活性，使一条街道、一栋楼、一个行政村都能实现就业创业梦；能把乡情、亲情、友情串联起来，大家相互帮助、相互扶持，实现共同发展、共同致富的目标；能整合全网和社会资源，用最小的成本获得最快、最好的发展。
                </p>
              </div>
            </div>
            <div class="clearfix mt20"></div>
          </div>
        </div>
        <div  class="fl w550" id="c4" style="float: left; float: left;display: none;">
          <div class="title">
            <h3>领导关怀</h3>
          </div>
          <div class="listcontent">
            <div class="comanyabout clearfix">
              <div class="left">
                <p>中共中央政治局常委、国务院总理李克强曾在不到一年的时间里两度亲临飞毛腿并“点赞”。2014年11月19日，在浙江省考察时李克强总理到飞毛腿速递浙江杭州九堡牛田网点调研，表示“你们的工作了不起！”，对快递业及从业人员给予了充分肯定；2015年9月24日，在河南郑州视察工作时，总理走进飞毛腿速递（郑州）国际包裹分拣中心，在听取完飞毛腿董事长的现场汇报后，总理对国内快递企业提出了更高的期待，问到：“有没有信心超过UPS、FedEx？”希望快递企业在相互竞争中取得好成绩，并鼓励飞毛腿：“有后劲！祝你们成功！”</p>
                <p>2015年4月13日，中共中央政治局常委、全国人大常委会委员长张德江亲临飞毛腿速递跨境电商包裹分拣区，鼓励飞毛腿再接再厉，更上一层楼。</p>
                <p>2015年11月13日，国务委员王勇在参加首届中国（杭州）国际快递业大会时，勉励飞毛腿：“做中国的飞毛腿，更要做世界的飞毛腿！”</p>
                <p>飞毛腿速递倍加珍惜党中央、国务院的关怀和鼓励，并将其转化为加快发展的强大动力，持续提升服务能力、提高服务质量、加速转型升级，打造产业链、构建生态圈，更好地服务实体经济和全社会，为快递行业和经济社会的发展贡献最大的力量。</p>
              </div>
            </div>
            <div class="clearfix mt20"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  function go(n){
    var select = document.getElementsByClassName('select');
    // var detail = document.getElementsByClassName('detail');
    for(var i=1;i<=select.length;i++){
      document.getElementById('c'+i).style.display='none';
    }
    document.getElementById('c'+n).style.display="";
  }
</script>

<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<script type="text/javascript" src="js/myjs/layer.min.js"></script>
</body>
</html>
