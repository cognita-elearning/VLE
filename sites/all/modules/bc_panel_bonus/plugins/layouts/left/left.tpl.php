<?php if ($content['top']) : ?><div class="top"><?php print $content['top'];?></div><?php endif; ?>
<?php if (!empty($content['left'])): ?>
<div class="colmask leftmenu">
	<div class="colleft">
		<div class="col1">
			<?php print $content['content']; ?>
		</div>
		<div class="col2">
			<?php print $content['left']; ?>
		</div>
	</div>
</div>
<?php else: ?>
<div class="no-image">
<?php print $content['content']; ?>
</div>
<?php endif; ?>