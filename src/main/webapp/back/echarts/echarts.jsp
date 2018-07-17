<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript">

    $.get('/his_zym/patient/queryMany').done(function (result) {
        var aaa = $.parseJSON( result);
        var myChart = echarts.init(document.getElementById('ech'));
        myChart.showLoading();//动画
        myChart.setOption({
            title : {
                text: '疾病分析',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} 例"
            },

            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel'],
                        option: {
                            funnel: {
                                x: '25%',
                                width: '50%',
                                funnelAlign: 'left',
                                max: 1548
                            }
                        }
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            series : [
                {
                    name:'类别',
                    type:'pie',
                    radius : '55%',//饼图的半径大小
                    center: ['50%', '60%'],//饼图的位置
                    data: aaa
                }
            ]
        });
        myChart.hideLoading();
    });
</script>

<div id="ech" style="width: 600px;height:400px;"></div>




