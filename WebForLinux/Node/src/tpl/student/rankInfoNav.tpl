
    <div class="top">
        <div class="lefts">
            <p class="p1">我的排名</p>
            <p class="p2">{{SelfRank}}</p>
        </div>
        {{if SelfRank==1}}
               <div class="rights">
            <p class="p3"><span>继续保持，夺取最后冠军</span></p>
            <p class="p4">领先&emsp;<span class="font14">{{SelfScore}}</span>&emsp;分</p>
        </div>
        {{else}}
        <div class="rights">
            <p class="p3"><span class="font14">距离上一名</span><span data-id="{{SelfLastId}}">（{{SelfLastName}}）</span></p>
            <p class="p4">仅差&nbsp;<span class="font14">{{SelfScore}}</span>&nbsp;学分</p>
        </div>
        {{/if}}

    </div>
    {{if IsGroup.toString().toLowerCase()=="true"}}
    <div class="top" style="border-top:0;">
        <div class="lefts">
            <p class="p1">团队排名</p>
            <p class="p2">{{TeamRank}}</p>
        </div>
        {{if TeamRank==1}}
        <div class="rights">
            <p class="p3"><span>继续保持，夺取最后冠军</span></p>
            <p class="p4">领先&emsp;<span class="font14">{{TeamScore}}</span>&emsp;分</p>
        </div>
        {{else}}
        <div class="rights">
            <p class="p3"><span class="font14">距离上一名</span><span data-id="{{TeamLastId}}">（{{TeamLastName}}队）</span></p>
            <p class="p4">仅差&nbsp;<span class="font14">{{TeamScore}}</span>&nbsp;学分</p>
        </div>
        {{/if}}
   
    </div>
  
    <div class="top team" style="border-top:0;">
        <div class="lefts" style="background:#fff9f0;color:#5a6c82;">
            <p class="p1">{{Mates.length}}名队友:</p>
            <p class="p2"><img src="/egword/build/img/my_team.png" alt="" /></p>
        </div>
        <div class="rights team" style="border:0;">
            <p class="our_team">
                {{each Mates as v i}}
                <span data-id="{{v.UserId}}">{{v.UserName}}</span>
                {{/each}}
            </p>
        </div>
    </div>
    {{/if}}
