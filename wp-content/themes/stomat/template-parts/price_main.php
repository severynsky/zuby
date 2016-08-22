<ul>
    <?php for($n = 0; $n<=count($arr[0])-1;$n++){ ?>
        <li>
            <?php if($n === 0): ?>
                <div class="col_name head_name"><span><?php echo $arr[0][$n] ?></span></div>
                <div class="col_price head_price"><span><span class="stick">|</span> <?php echo $arr[1][$n] ?></span></div>
            <?php endif; ?>
            <?php if($n !== 0): ?>
                <div class="col_name"><?php echo $arr[0][$n] ?></div>
                <div class="col_price"><?php echo $arr[1][$n] ?></div>
            <?php endif; ?>
        </li>
    <?php } ?>
</ul>

