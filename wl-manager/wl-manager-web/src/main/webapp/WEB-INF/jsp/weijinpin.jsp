<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/11
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
  <link href="css/weijinpin/Customersv.css?v_20170727" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="head.jsp"%>

<div id="content">
  <div class="contentwarp clearfix">
    <div class="fl w190">
      <div class="servicect">
        <div class="title1">
          <div class="titleicon">
            <img src="images/service/query.png" width="29" height="26" />
          </div>
          <div class="text">查询服务</div>
        </div>
        <div class="contentlist">
          <ul>
            <li class="on"><a href="danhaoQuery">快件查询</a></li>
            <li class=""><a href="shixiao">报价时效查询</a></li>
            <li class=""><a href="weijinpin">禁寄品须知</a></li>
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
              <h5><a href="weijinpin" target="_blank">违禁品</a></h5>
            </li>

            <li>
              <div>
                <a href="shixiao">
                  <img src="images/base/money.png" width="39" height="38" /></a>
              </div>
              <h5><a href="shixiao" >报价时效</a></h5>
            </li>
            <li class="firstChild">
              <div>
                <a href="#">
                  <img src="images/service/pdicon-7.png" width="39" height="38"></a>
              </div>
              <h5><a href="#">服务指南</a></h5>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="fr w770">
      <div class="ad">
        <img src="images/shixiao/query.jpg" width="770" height="173" />
      </div>
      <div class="listbd">
        <div class="listcontent">
          <p>  <b>为维护社会公共安全、社会和谐稳定，维护国家利益，保障人民生命财产安全，防止禁寄物品进入寄递渠道，必须严格执行各项操作规范，严禁收寄、递运各类禁寄物品。</b><br /></p>
          <p>
            <b>禁寄物品是指国家法律、法规禁止寄递的物品，主要包括：</b>
          </p>
          <div class="contraicon">
            <ul class="mt20 clearfix">
              <li class="firstChild">
                <img src="images/weijinpin/contraband-1.jpg" width="88" height="87">
                <h5>各类武器、弹药</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-2.jpg" width="87" height="87">
                <h5>各类易爆炸性物品</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-3.jpg" width="87" height="87">
                <h5>各类易燃烧性物品</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-4.jpg" width="87" height="87">
                <h5>各类易腐蚀性物品</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-5.jpg" width="87" height="87">
                <h5>各类放射性元素及容器</h5>
              </li>
              <li class="firstChild">
                <img src="images/weijinpin/contraband-6.jpg" width="87" height="87">
                <h5>各类烈性毒药</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-7.jpg" width="87" height="87">
                <h5>各类麻醉药物</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-8.jpg" width="87" height="87">
                <h5>生化制品和传染性物品</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-9.jpg" width="87" height="87">
                <h5>淫秽的出版物等</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-10.jpg" width="87" height="87">
                <h5>妨害公共卫生的物品</h5>
              </li>
              <li class="firstChild">
                <img src="images/weijinpin/contraband-11.jpg" width="87" height="87">
                <h5>禁止流通、寄递</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-12.jpg" width="87" height="87">
                <h5>包装不妥，可能危害</h5>
              </li>
              <li>
                <img src="images/weijinpin/contraband-13.jpg" width="87" height="87">
                <h5>国际禁止寄递物品</h5>
              </li>
            </ul>
          </div>
          <div class="contratextreas1">
            <ol>
              <li>各类枪支（含仿制品、主要零部件）弹药。如枪支、子弹、炸弹、信号弹、火药等。</li>
              <li>各类管制器具。如匕首、弹簧刀（跳刀）、单刃、双刃、三棱尖刀、弩、电击器等。</li>
              <li>各类爆炸物品。如雷管、炸药、导火索、黑火药、引火线、烟花爆竹、推进剂、硝化棉等。</li>
              <li>各类压缩和液化气体及其容器。如甲、乙、丁烷、液化石油天然气、一氧化碳、一氧化氮、压缩氧气、氦气等。</li>
              <li>各类易燃液体。如汽油、柴油、桐油、油漆、酒精、松香油、乙醚等。</li>
              <li>各类易燃固体、自燃物质、遇水易燃物质。如硫磺、闪光粉、固体酒精、黄磷、白磷、钛粉、金属钠、碳化钙、氰化钾、氰化钠等。</li>
              <li>各类氧化剂和过氧化物。如高锰酸盐、高氯酸盐、氧化氢、过氧化钠、过氧化钾、过氧化铅、氯酸盐、硝酸盐、双氧水等。</li>
              <li>各类毒性物质。如砷、砒霜、汞化物、铊化物、氰化物、硒粉、苯酚、汞、剧毒农药等。</li>
              <li>各类生化制品、传染性、感染性物质。如病菌、炭疽、寄生虫、排泄物、医疗废弃物、尸骨、动物器官、肢体等。</li>
              <li>各类放射性物质。如铀、钴、镭、钚等。</li>
              <li>各类腐蚀性物质。如硫酸、硝酸、盐酸、蓄电池、氢氧化钠、氢氧化钾等。</li>
              <li>各类毒品及吸毒工具、非正当用途麻醉药品和精神药品、非正当用途的易制毒化学品。如冰壶、冰毒、海洛因、大麻、可卡因、麻黄素、甲苯、丙酮、胡椒醛、黄樟素、黄樟油等。</li>
              <li>各类非法出版物、印刷品、音像制品等宣传品。如含有反动、煽动民族仇恨、破坏国家统一、破坏社会稳定、宣扬邪教、宗教极端思想、淫秽等内容的图书、刊物、图片、照片、音像制品等。</li>
              <li>各类间谍专用器材。如暗藏式窃听器材、突发式收发报机、一次性密码本、密写工具、用于获取情报的电子监听和截收器材等。</li>
              <li>各类非法伪造物品。如伪造或者变造的货币、证件、公章等。</li>
              <li>各类侵犯知识产权和假冒伪劣物品。如侵犯专利权、著作权的图书、音像制品、假冒伪劣的食品、药品、电子产品、化妆品、等。</li>
              <li>各类濒危野生动物及其制品。如象牙、虎骨、犀牛角及其制品等。</li>
              <li>各类禁止进出境物品。如有碍人畜健康的、来自疫区的以及其他能传播疾病的食品、药品或者其他物品；内容涉及国家秘密的文件、资料及其他物品。</li>
              <li>其他物品。《危险化学品目录》《民用爆炸物品品名表》《易制爆危险化学品名录》《易制毒化学品的分类和品种目录》《中华人民共和国禁止进出境物品表》载明的物品和《人间传染的病原微生物名录》载明的第一、二类病原微生物等，以及法律、行政法规、国务院和国务院有关部门规定禁止寄递的其他物品。</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/shixiao/search-price.js?v2017831"></script>
<script type="text/javascript" src="js/shixiao/PricePlaces.js"></script>
<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<link rel="stylesheet" href="css/css/jquery.css" type="text/css" />
</body>
</html>
