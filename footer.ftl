</div><!-- end #body -->
<footer id="footer" role="contentinfo">
    <div class="container-fluid">
        <div class="row">
        <div class="col-12">
            &copy; 2015 - ${.now?string('yyyy')} <a> Power by </a><a href="https://hongch.freeb.vip/archives/guan-yu-wo">${blog_title!}</a>. Using by Halo and Story
        </div>
        <div class="col-12">
            <@global.footer />
        </div>
        </div>
    </div>
</footer>
<script src="//cdnjs.loli.net/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${theme_base!}/assert/js/prism.js"></script>
<script src="${theme_base!}/assert/js/zoom-vanilla.min.js"></script>
<script>
    window.onload=function(){
        if (window.location.hash!='') {
          var i=window.location.hash.indexOf('#comment');
          var ii=window.location.hash.indexOf('#respond-post');
          if (i != '-1' || ii != '-1') {
            document.getElementById('btn-comments').innerText='hide comments';
            document.getElementById('comments').style.display='block';
          }
        }
    }

    function isMenu(){
        if(document.getElementById('menu-1').style.display=='inline'){
            $('#search-box').fadeOut(200);
            $('#menu-page').fadeOut(200);
            $('#menu-1').fadeOut(500);
            $('#menu-2').fadeOut(400);
            $('#menu-3').fadeOut(300);
        } else {
            $('#menu-1').fadeIn(150);
            $('#menu-2').fadeIn(150);
            $('#menu-3').fadeIn(150);
        }
    }

    function isMenu1(){
        if(document.getElementById('menu-page').style.display=='block'){
            $('#menu-page').fadeOut(300);
        } else {
            $('#menu-page').fadeIn(300);
        }
    }

    function isMenu2(){
        if(document.getElementById('torTree')){
            if(document.getElementById('torTree').style.display=='block'){
                $('#torTree').fadeOut(300);
            } else {
                $('#torTree').fadeIn(300);
            }
        }
    }

    function isMenu3(){
        if(document.getElementById('search-box').style.display=='block'){
            $('#search-box').fadeOut(300);
        } else {
            $('#search-box').fadeIn(300);
        }
    }

    function isComments(){
        if(document.getElementById('btn-comments').innerText=='show comments'){
            document.getElementById('btn-comments').innerText='hide comments';
            document.getElementById('comments').style.display='block';
        } else {
            document.getElementById('btn-comments').innerText='show comments';
            document.getElementById('comments').style.display='none';
        }
    }

    function Search404(){
        $('#menu-1').fadeIn(150);
        $('#menu-2').fadeIn(150);
        $('#menu-3').fadeIn(150);
        $('#search-box').fadeIn(300);
    }

    function goBack(){
        window.history.back();
    }
</script>

</body>
</html>
