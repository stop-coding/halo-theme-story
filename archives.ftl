<#--
归档页面

@package custom
-->
<#include "header.ftl">
<@header title="Archive - ${blog_title!}"></@header>
<div class="container-fluid">
    <div class="row">
        <div id="main" class="col-12 clearfix" role="main">
            <article class="posti" itemscope itemtype="http://schema.org/BlogPosting">
                <h3>${blog_title!}</h3>
                <div id="archives">
                <@postTag method="archiveYear">
                    <#list archives as archive>
                    <h4>${archive.year} 年</h4>
                    <ul>
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <li>${post.createTime?string('MM月dd日')}：
                                <a href="${post.fullPath!}">${post.title!}</a>
                            </li>
                        </#list>
                    </ul>
                    </#list>
                </@postTag>
                </div>
            </article>
        </div>
    </div>
</div>
<#include "footer.ftl">
