<div class="left cj0">
    <div class="header">
        <p class="header-title">
            正在抽奖：{{awardname}}
       
        </p>
        <div class="reg">
            <span class="reg-t">规则说明：</span>
            {{if awardtype==0}}
            <p class="reg-c">
                    <span>
                    (1)冠军团队的每个人都有抽奖资格&emsp;</span><span> (2)按照抽奖顺序依次抽奖</span><br/>
                <span>(3)每次抽奖最多15秒</span>
            </p>
            {{else if awardtype==3}}
            <p class="reg-c">
                <span>
                    (1)由系统指定单词王随机抽取一名学生进行抽奖&emsp;
                </span><span>(2)每次抽奖最多15秒</span>
            </p>
            {{/if}}
        </div>
    </div>
    <div class="award-warp">
        {{if awardtype==0}}
        <div class="award-title">
            <span class="f20 col-ff8716 ">获奖团队：</span>
            {{each group as v i}}
            <span class="">{{v.GroupName}}（{{v.AvgCredits}}分）</span>
            {{/each}}
        </div>
        {{else if awardtype==3}}
        <div class="award-title">
            <span class="f20 col-ff8716 ">幸运学生：</span>
            <span class="">{{sname}}</span>
        </div>
        {{/if}}
        <div class="award-content">
            <!--<div class="award-time"><span>15</span>s</div>-->
            <div class="award-pan-all">
                <div class="award-pan" style="transform-origin: center;">
                    <div class="roate_roate" style="transform-origin: center;">
                        {{each awardlist as v i}}
                        <div class="pan-text deg{{i+1}}">{{v.name}}</div>
                        {{/each}}
                        <!--<div class="pan-text deg1">单词王1</div>-->
                        <!--<div class="pan-text deg2">冠军团队奖2</div>-->
                        <!--<div class="pan-text deg3">冠军团队奖3</div>-->
                        <!--<div class="pan-text deg4">冠军团队奖4</div>-->
                        <!--<div class="pan-text deg5">冠军团队奖5</div>-->
                        <!--<div class="pan-text deg6">冠军团队奖6</div>-->
                        <!--<div class="pan-text deg7">幸运奖7</div>-->
                        <!--<div class="pan-text deg8">单词王8</div>-->
                    </div>
                </div>
                <div class="award-point"></div>
            </div>
            <div class="opt">
                <div class="resultmsg">
                </div>
                {{if isself}}
                <span class="btn-award">GO</span>
                <p class="msg" style="display: none">
                    <span>据说：众人一起喊某奖品名称的声音越大，则概率越大</span>
                    <i class="icon-loud-speak ml15"></i>
                </p>
                {{else}}
                <span class="btn-award" style="display: none">GO</span>
                <p class="msg">
                    <span>据说：众人一起喊某奖品名称的声音越大，则概率越大</span>
                    <i class="icon-loud-speak ml15"></i>
                </p>
                {{/if}}
            </div>
        </div>
    </div>
</div>