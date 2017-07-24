<div class="second-header">
    <span class="left">
        {{GroupCount}}个团队，{{StuCount}}名同学
    </span>
    <span class="right">
        时间：{{Time}}
    </span>
</div>
<div class="scroll">
    <div class="row">
        <div class="row-title"><span>个人榜</span></div>
        <div class="row-header">&nbsp;</div>
        <table class="pk-color big">
            <thead>
            </thead>
            <tbody>
                <tr>
                    <td class="tc" width="20%">
                        <p class="f30 col-ff8716">{{SelfRank}}</p>
                        <p>我的排名</p>
                    </td>
                    <td width="20%">
                        <p>{{Score}}</p>
                        <p>当前学分</p>
                    </td>
                    <td width="30%">
                        {{if SelfRank==1}}
                        <p><span class="col-ff8716 f16 ">继续保持，夺取最后冠军</span></p>
                        <p>目标</p>

                        {{else}}
                        <p>距离上一名<span class="col-ff8716 f16 ">（{{SelfLastName}}）</span></p>
                        <p>目标</p>
                        {{/if}}


                    </td>
                    <td>
                        <p>
                            {{ScoreFall}}分
                        </p>
                        {{if SelfRank==1}}
                        <p>领先</p>
                        {{else}}
                        <p>仅差</p>
                        {{/if}}
                    </td>
                </tr>

            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="row-title"><span>团队PK</span></div>
        <table class="pk-color">
            <thead>
                <tr>
                    <td width="15%" class="tc"></td>
                    <td width="15%">团队名称</td>
                    <td width="20%">平均学分</td>
                    <td width="20%">贡献最大</td>
                    <td style="text-align: left;text-indent: 70px;">成员</td>
                </tr>
            </thead>
            <tbody>
                {{each GroupInfo as v i}}
                {{if v.ContainSearch==1}}
                <tr class="hover">
                    {{else}}
                <tr>
                    {{/if}}
                    {{if v.GroupRank==1}}
                    <td class="tc">
                        <i class="seq-icon first-icon"></i>
                    </td>
                    {{else if v.GroupRank==2}}
                    <td class="tc">
                        <i class="seq-icon second-icon"></i>
                    </td>
                    {{else if v.GroupRank==3}}
                    <td class="tc">
                        <i class="seq-icon third-icon"></i>
                    </td>
                    {{else}}
                    <td class="tc">
                        {{v.GroupRank}}
                    </td>
                    {{/if}}
                    <td>{{v.GroupName}}</td>
                    <td>{{v.Score}}</td>
                    <td>{{v.MaxUserName}}</td>
                    <td style="text-align:left;" title="{{v.Members.join('、')}}">{{$helpers.cutchar(v.Members.join('、'),20)}}</td>
                </tr>
                {{/each}}


            </tbody>
        </table>
    </div>
</div>