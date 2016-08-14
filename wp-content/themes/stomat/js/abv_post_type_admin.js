var noImg = 0;
jQuery(function($){
    // добавляем картинку
    $('.upload_image_button').click(function(){
        var html_img_box = $('<div class="img_box"><img src="" alt=""><input type="hidden" name="" value=""><a href="#" ' +
            'class="remove_image_button">x</a></div>');
        var send_attachment_bkp = wp.media.editor.send.attachment;
        var wrap = $('.wrap_img_box');
        wp.media.editor.send.attachment = function(props, attachment) {
            noImg +=1;
            $(html_img_box).children('img').attr('src', attachment.url);
            $(html_img_box).children('input').attr('name', 'abv_gallery_img['+noImg+']');
            $(html_img_box).children('input').val(attachment.id);
            $(wrap).append(html_img_box);
            wp.media.editor.send.attachment = send_attachment_bkp;
            console.log('send_attachment_bkp');
            console.log(send_attachment_bkp);
        };
        wp.media.editor.open(wrap);

        return false;
    });

    // удаляем картинку
    $('.remove_image_button').live('click', function(){
        $(this).parent().remove();
        return false;
    });

    // включаем сортировку
    $('.wrap_sortable_checkboxes').sortable();
});
