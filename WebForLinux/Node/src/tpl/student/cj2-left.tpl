<div class="left cj2">
    <div class="header">
        <p class="header-title">
            正在抽奖：单词王
        </p>
        <div class="reg">
            <span class="reg-t">规则说明：</span>
            <p class="reg-c">
                    <span>
                    (1)&nbsp;如果有多名单词王，则按照系统指定顺序依次抽奖 &emsp;</span>
                <span>(2)&nbsp;每次抽奖最多15秒</span>
            </p>
        </div>
    </div>
    <div class="award-warp">
        <div class="award-title">
            <span class="f20 col-ff8716 " style="display: inline-block;margin-top: 5px;vertical-align: top;">获奖学生：</span>
            {{each wanglist as v i}}
                  <span class="">{{v.UserName}}<span style="margin-left:10px;">({{v.Credits}}分)</span></span>
            {{/each}}
            
          </div>
        </div>
        <div class="award-content">
            <!--<div class="award-time"><span>15</span>s</div>-->
            <div class="award-card-all">
                {{each awardlist as v i}}
                <div class="card-warp" data-index="{{i}}">
                    <div class="card-close">
                        <div class="card-inner-back">密</div>
                    </div>
                    <div class="card-open">
                        <div class="card-inner-front">{{v.name}}</div>
                    </div>
                </div>
                {{/each}}

            </div>
            <div class="opt">
                <div class="resultmsg">
                    </div>
                {{if isself}}
                <p class="msg">
                    <span>请鼠标选中翻牌</span>
                    <i class="icon-loud-speak ml15"></i>
                </p>
                {{else}}

                <p class="msg">
                    <span>你认为第几张牌后面的奖品最棒呢？</span>
                    <i class="icon-loud-speak ml15"></i>
                </p>
                {{/if}}
            </div>
        </div>
    </div>
</div>