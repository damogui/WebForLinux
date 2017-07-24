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
        <table class="pk-color">
            <thead>
                <tr>
                    <td width="15%" class="tc"></td>
                    <td width="20%">姓名</td>
                    <td width="30%">本课学分</td>
                    <td>荣誉称号</td>
                </tr>
            </thead>
            <tbody>
                {{each RankResult as v i}}
                {{if v.UserId==self}}
                
                <tr class="hover">
                    {{else}}
                <tr>

                    {{/if}}
                    {{if v.UserRank==1}}
                    <td class="tc">
                        <i class="seq-icon first-icon"></i>
                    </td>
                    {{else if v.UserRank==2}}
                    <td class="tc">
                        <i class="seq-icon second-icon"></i>
                    </td>
                    {{else if v.UserRank==3}}
                    <td class="tc">
                        <i class="seq-icon third-icon"></i>
                    </td>
                    {{else}}
                    <td class="tc">
                        {{v.UserRank}}
                    </td>
                    {{/if}}

                    <td>{{v.UserName}}</td>
                    <td>{{v.Score}}</td>
                    {{if v.Honor.length>0}}
                    <td>{{$helpers.cutchar(v.Honor.join('、'),20)}}</td>
                    {{else}}
                    <td>---</td>
                    {{/if}}
                </tr>
                {{/each}}


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
                    <td>成员</td>
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
                    <td title="{{v.Members.join('、')}}">{{$helpers.cutchar(v.Members.join('、'),20)}}</td>
                </tr>
                {{/each}}


            </tbody>
        </table>
    </div>
</div>