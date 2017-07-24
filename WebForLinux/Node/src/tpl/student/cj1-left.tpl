<div class="left cj1">
    <div class="header">
        <p class="header-title">
            正在抽奖：幸运奖
        </p>
        <div class="reg">
            <span class="reg-t">规则说明：</span>
            <p class="reg-c">
                    <span>
                    (1)&nbsp;由系统指定单词王随机抽取一名学生进行抽奖 &emsp;</span>
                <span>(2)&nbsp;每次抽奖最多15秒</span>
            </p>
        </div>
    </div>
    <div class="award-warp">
        <div class="award-title">
            <span class="f20 col-ff8716 ">由单词王：</span>
            <span class="">{{wang}}</span>
            <span class="f16 ml15" style="font-weight: normal">抽取幸运学生</span>
        </div>
        <div class="award-content">
            <!--<div class="award-time"><span>15</span>s</div>-->
            
            <div class="award-yb-all" id="award-yb">
                <div class="yg"></div>
                <div class="yb yb0">

                </div>
                <div class="yb yb1">
                    <div class="yb yb2">
                        <div class="yb yb3">
                            <p class="translate_p"></p>
                        </div>
                    </div>

                </div>
                <div class="shadow1">

                </div>

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