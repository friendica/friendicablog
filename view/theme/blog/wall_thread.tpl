<article class="post-8 post type-post status-publish format-standard hentry category-uncategorized tag-html tag-wordpress" id="item-$item.id">
		<header class="entry-header">
                    <h1 class="entry-title"><a rel="bookmark" title="Permalink" href="$item.plink.href">$item.title</a></h1>
			
                    <div class="entry-meta">
                        <span class="sep">Posted </span>
                        <a rel="bookmark" title="12:04 am" href="$item.plink.href">
                            <time pubdate="" datetime="$item.localtime" class="entry-date">$item.ago</time>
                        </a>
                        <span class="by-author"> 
                            <span class="sep"> by </span>
                            <span class="author vcard dropmenu">
                                <a rel="author" title="$item.linktitle" href="$item.profile_url" class="url fn n">$item.name</a>
                                <ul class="menu-popup" id="author-menu-$item.id">
                                    $item.item_photo_menu
                                </ul>                                  
                            </span>
                         </span>
                    </div><!-- .entry-meta -->
			
                    <div class="comments-link">
                        <a title="Comment" href="$item.plink.href">$item.total_comments_num</a>
                    </div>
            </header><!-- .entry-header -->

            <div class="entry-content">
                $item.body
            </div><!-- .entry-content -->
		
		<footer class="entry-meta">
                    {{ if $item.categories }}
                    <span class="cat-links">
                        <span class="entry-utility-prep entry-utility-prep-cat-links">Posted in</span> 
                        {{ for $item.categories as $cat }}
                            <a href="$cat.url">$cat.name</a>{{if $cat.removeurl}} (<a href="$cat.removeurl" title="$remove">x</a>) {{endif}} 
                        {{ endfor }}
                    </span>
                    <span class="sep"> | </span>
                    {{ endif }}
                    {{ if $item.hashtags }}
                    <span class="tag-links">
                        <span class="entry-utility-prep entry-utility-prep-tag-links">Tagged</span> 
                        {{ for $item.hashtags as $tag }}
                            $tag
                        {{ endfor }}
                    </span>
                    <span class="sep"> | </span>
                    {{ endif  }}
                    {{ if $item.mentions }}
                    <span class="tag-links">
                        <span class="entry-utility-prep entry-utility-prep-tag-links">Mention</span> 
                        {{ for $item.mentions as $men }}
                            $men
                        {{ endfor }}
                    </span>
                    <span class="sep"> | </span>
                    {{ endif  }}
                    
                    <span class="comments-link"><a title="Comment" href="$item.plink.href">$item.total_comments_num $item.total_comments_text</a>
                    </span>
        </footer><!-- #entry-meta -->
</article>

{{ if $mode != profile }}

<div id="comments">
  <h2 id="comments-title">
        $item.total_comments_num $item.total_comments_text {{if $item.title}}on &ldquo;<span>$item.title</span>&rdquo;{{endif}}	
  </h2>
  <ol class="commentlist">
    
    {{ for $item.children as $child }}
            {{ inc wall_thread_comment.tpl with $item=$child }}{{ endinc }}
    {{ endfor }}
  
    
  </ol>
 
    $item.comment
</div>
{{ endif }}
