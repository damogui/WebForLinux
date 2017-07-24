<div class="second-header">
    <span class="left">
        学生人数：{{StuCount}}
    </span>
    <span class="left ml30">
        组队方式：系统随机
    </span>
    <span class="left ml30">
        团队个数：{{GroupCount}}
    </span>
    <span class="right">
        上课时间：{{ActionTime}}
    </span>
</div>
<div class="scroll" style="max-height:400px;">
    <div class="row">
        <div class="row-title"><span>我的团队</span></div>
        <div class="row-header"></div>
        <table class="pk-color big">
            <thead>
            </thead>
            <tbody>
                {{each GroupInfo as v i}}
                {{if v.ContainSearch==1}}
                <tr>
                    <td class="tc" width="30%">
                        <p class="f20 col-ff8716">{{v.GroupName}}</p>
                        <p>团队名称</p>
                    </td>
                    <td width="20%">
                        <p>{{v.Count}}</p>
                        <p>人数</p>
                    </td>
                    <td width="td-last">
                        {{each v.Members as m i}}
                            {{if (i+1)%5==0}}
                            <p>
                            {{/if}}
                            <span>{{m}}</span>

                            {{if (i+1)%5==0}}
                            </p>
                            {{/if}}
                        {{/each}}

                    </td>
                </tr>
                {{/if}}
                {{/each}}

            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="row-title"><span>其它团队</span></div>
        <table class="pk-color">
            <thead>
                <tr>
                    <td width="15%" class="tc">序号</td>
                    <td width="20%" class="tc">团队名称</td>
                    <td width="20%" class="tc">人数</td>
                    <td class="tc">成员</td>

                </tr>
            </thead>
            <tbody>
                {{each GroupInfo as v i}}
                {{if v.ContainSearch==0}}
                <tr>
                    <td class="tc">
                        {{i+1}}
                    </td>
                    <td>{{v.GroupName}}</td>
                    <td>{{v.Count}}</td>
                    <td  title="{{v.Members.join('、')}}">{{$helpers.cutchar(v.Members.join('、'),20)}}</td>
                </tr>
                {{/if}}
                {{/each}}
             


            </tbody>
        </table>
    </div>
</div>