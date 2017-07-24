
<div class="split-header"> <i class="pop-close-icon fr"></i></div>
<table style="width:100%">
    <caption class="col-ff8716">抽奖记录：</caption>
    <caption class="split"></caption>
    <thead>
        <tr>
            <td>
                抽奖顺序
            </td>
            <td>
                奖项
            </td>
            <td>
                结果
            </td>
        </tr>
    </thead>
</table>
<div class="table-scroll" style="height:500px;">
    <table class="award-record-list">

        <tbody>
            {{each stulist as v i}}
            {{if v.awardresult}}
            {{if v.awardresult=="正在抽奖"}}
            <tr class="award-ing">
                <td>{{v.name}}</td>
                <td>{{v.awardtype}}</td>
                <td class="">{{v.awardresult}}</td>
            </tr>
            {{else if v.awardresult=="准备"}}
            <tr class="award-normal">
                <td>{{v.name}}</td>
                <td>{{v.awardtype}}</td>
                <td class="">{{v.awardresult}}</td>
            </tr>
            {{else}}
            <tr class="award-finish">
                <td>{{v.name}}</td>
                <td>{{v.awardtype}}</td>
                <td class="">{{v.awardresult}}</td>
            </tr>
            {{/if}}

            {{else}}
            <tr class="award-normal">
                <td>{{v.name}}</td>
                <td>{{v.awardtype}}</td>
                <td class="">{{v.awardresult}}</td>
            </tr>
            {{/if}}

            {{/each}}
            <tr class="award-normal" id="right-lucky">
                <td id="right-lucky-name">待定</td>
                <td>幸运奖</td>
                <td class=""></td>
            </tr>
        </tbody>
    </table>
</div>
