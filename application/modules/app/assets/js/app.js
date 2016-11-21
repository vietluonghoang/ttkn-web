$(document).ready(function () {
    var notif = $("#notif_message");
    var notif_content = $("#notif_message #notif_content");
    var notif_type = $("#notif_message #notif_type");
    if(notif.length){
        $("body").overhang({
            type: notif_type.html(),
            message: notif_content.html(),
            closeConfirm: true
        });
    }
    $(".mCustomScrollbar").mCustomScrollbar({
        autoHideScrollbar: true,
        theme: "light-3"
    });

    //event for add new and update khach
    $(".close_input_popup").click(function () {
        $(this).closest('.wrap_input_popup').hide();
    });
    $(".call_input_popup_group").click(function () {
        var field = $(this).attr("class").split(' field_').pop();
        $(".input_new_"+field).val("");
        $(".input_popup_" + field).show();
        $(".input_new_"+field).focus();
    });
    $(".submit_khach").click(function () {
        var name_list = $(".wrap_new_name").find(".new_name_item .new_data");
        var name_data = new Array();
        name_list.each(function (key, item) {
            name_data.push('{"value":"' + item.innerHTML + '"}');
        });
        $(".hidden_name").val('[' + name_data.toString() + ']');
        var giayto_list = $(".wrap_new_giayto").find(".new_giayto_item");
        var giayto_data = new Array();
        giayto_list.each(function (key, item) {
            giayto_data.push('{"giayto_id":"' + $(item).find(".new_giayto_key")[0].value + '","maso":"' + $(item).find(".new_giayto_value")[0].innerHTML + '"}');
        });
        $(".hidden_giayto").val('[' + giayto_data.toString() + ']');

        var diachi_list = $(".wrap_new_diachi").find(".new_diachi_item .new_data");
        var diachi_data = new Array();
        diachi_list.each(function (key, item) {
            diachi_data.push('{"value":"' + item.innerHTML + '"}');
            console.log(item.innerHTML);
        });
        $(".hidden_dia_chi").val('[' + diachi_data.toString() + ']');

        var phone_list = $(".wrap_new_phone").find(".new_phone_item .new_data");
        var phone_data = new Array();
        phone_list.each(function (key, item) {
            phone_data.push('{"value":"' + item.innerHTML + '"}');
        });
        $(".hidden_phone").val('[' + phone_data.toString() + ']');

        var note_list = $(".wrap_new_note").find(".new_note_item .new_data");
        var note_data = new Array();
        note_list.each(function (key, item) {
            note_data.push('{"value":"' + item.innerHTML + '"}');
        });
        $(".hidden_note").val('[' + note_data.toString() + ']');
        if(name_data.length == 0){
            $("body").overhang({
                type: "error",
                message: "Nhập tên",
                closeConfirm: true
            });
        }else{
            $("#khach_moi").submit();
        }
    });
    $(".controlButton").click(function () {

        if ($('#itemList').is(':animated')) {
            return false;
        }
        var img_width = $(".img-item").last().width() + 10;
        if ($(this).attr('id') == "preButton") {
            $("#itemList").stop().animate({marginLeft: "-" + (img_width * 3) + "px"}, function () {
                $(".img-item").last().attr('id', null);
                $(".img-item").last().after("<div class='img-item' id='lastItem'>" + $("#firstItem").html() + "</div>");
                $(".img-item").remove("#firstItem");
                $(".img-item").first().attr('id', 'firstItem');
                $("#itemList").animate({marginLeft: '-' + (img_width * 2) + 'px'}, 0);
            });
        } else {
            $("#itemList").stop().animate({marginLeft: "-" + img_width + "px"}, function () {
                $(".img-item").first().attr('id', null);
                $(".img-item").first().before("<div class='img-item' id='firstItem'>" + $("#lastItem").html() + "</div>");
                $(".img-item").remove("#lastItem");
                $(".img-item").last().attr('id', 'lastItem');
                $("#itemList").animate({marginLeft: '-' + (img_width * 2) + 'px'}, 0);
            });
        }
    });

    //event for add new khach
    $(".add_new_name_icon").click(function () {
        var new_name = $(".input_new_name").val();
        if(new_name != ""){
            $(".wrap_new_name").append("<div class='tag_item new_name_item form-inline'><div class='new_data' value='" + new_name + "' >"+new_name+"</div><div type='button' class='delete_" + new_name + "_icon delete_field_icon icon-remove' value='" + new_name + "'></div></div>");
            $(".input_popup_name").hide();
            $(".delete_" + new_name + "_icon").click(function () {
                $(this).closest('.new_name_item').remove();
            });
        }else{
            $("body").overhang({
                type: "error",
                message: "Tên không được bỏ trống",
                closeConfirm: true
            });
        }
    });
    $(".add_new_giayto_icon").click(function () {
        var new_giayto = $(".giayto_type").find(":selected").text();
        var new_giayto_key = $(".giayto_type").find(":selected").val();
        var new_giayto_value = $(".input_new_giayto").val();
        if(new_giayto_value != ""){
        $(".wrap_new_giayto").append("<div class='tag_item new_giayto_item form-inline'><input type='hidden' class='new_giayto_key' value='" + new_giayto_key + "'/>" + new_giayto + " -  <div class='new_giayto_value' value='" + new_giayto_value + "' >" + new_giayto_value + "</div><div class='delete_" + new_giayto_value + "_icon delete_field_icon icon-remove' value='" + new_giayto_value + "'></div></div>");
        $(".input_popup_giayto").hide();
        $(".delete_" + new_giayto_value + "_icon").click(function () {
            $(this).closest('.new_giayto_item').remove();
        });
        }else{
            $("body").overhang({
                type: "error",
                message: "Giấy tờ không được bỏ trống",
                closeConfirm: true
            });
        }
    });
    $(".add_new_diachi_icon").click(function () {
        var new_diachi = $(".input_new_diachi").val();
        if(new_diachi != ""){
        $(".wrap_new_diachi").append("<div class='tag_item new_diachi_item form-inline'><div class='new_data' value='" + new_diachi + "' >" + new_diachi + "</div><div class='delete_" + new_diachi + "_icon delete_field_icon icon-remove' value='" + new_diachi + "'></div></div>");
        $(".input_popup_diachi").hide();
        $(".delete_" + new_diachi + "_icon").click(function () {
            $(this).closest('.new_diachi_item').remove();
        });
    }else{
        $("body").overhang({
            type: "error",
            message: "Địa chỉ không được bỏ trống",
            closeConfirm: true
        });
    }
    });
    $(".add_new_phone_icon").click(function () {
        var new_phone = $(".input_new_phone").val();
        if(new_phone != ""){
        $(".wrap_new_phone").append("<div class='tag_item new_phone_item form-inline'><div class='new_data' value='" + new_phone + "' >" + new_phone + "</div><div  class='icon-remove delete_field_icon delete_" + new_phone + "_icon' value='" + new_phone + "'></div></div>");
        $(".input_popup_phone").hide();
        $(".delete_" + new_phone + "_icon").click(function () {
            $(this).closest('.new_phone_item').remove();
        });
        }else{
            $("body").overhang({
                type: "error",
                message: "Điện thoại không được bỏ trống",
                closeConfirm: true
            });
        }
    });
    $(".add_new_note_icon").click(function () {
        var new_note = $(".input_new_note").val();
     if(new_note != ""  ){
        $(".wrap_new_note").append("<div class='tag_item new_note_item form-inline'><div class='new_data' value='" + new_note + "' >" + new_note + "</div> <div class='icon-remove delete_field_icon delete_" + new_note + "_icon' value='" + new_note + "'></div></div>");
        $(".input_popup_note").hide();
        $(".delete_" + new_note + "_icon").click(function () {
            $(this).closest('.new_note_item').remove();
        });
    }else{
        $("body").overhang({
            type: "error",
            message: "Ghi chú không được bỏ trống",
            closeConfirm: true
        });
    }
    });

    //event for update khach
    $(".add_new_edit_name_icon").click(function () {
        var khach_id = QueryString.id;
        var name = $(".input_new_edit_name").val();
        var jqxhr = $.get('update_khach_info_name?method=add&name='+name+'&khach='+khach_id, function () {
        }).done(function () {
            location.reload();
        }).fail(function () {
        }).always(function () {
        });
    });
    $(".add_new_edit_diachi_icon").click(function () {
        var khach_id = QueryString.id;
        var diachi = $(".input_new_edit_diachi").val();
        var jqxhr = $.get('update_khach_info_diachi?method=add&diachi='+diachi+'&khach='+khach_id, function () {
        }).done(function () {
            location.reload();
        }).fail(function () {
        }).always(function () {
        });
    });
    $(".add_new_edit_phone_icon").click(function () {
        var khach_id = QueryString.id;
        var diachi = $(".input_new_edit_phone").val();
        var jqxhr = $.get('update_khach_info_phone?method=add&phone='+diachi+'&khach='+khach_id, function () {
        }).done(function () {
            location.reload();
        }).fail(function () {
        }).always(function () {
        });
    });
    $(".add_new_edit_note_icon").click(function () {
        var khach_id = QueryString.id;
        var diachi = $(".input_new_edit_note").val();
        var jqxhr = $.get('update_khach_info_note?method=add&note='+diachi+'&khach='+khach_id, function () {
        }).done(function () {
            location.reload();
        }).fail(function () {
        }).always(function () {
        });
    });
    $(".add_new_edit_image_icon").click(function () {
        $("#form_upload_img").submit();
    });
    $(".remove_image_button").click(function () {
        var khach_id = QueryString.id;
        var data = '[{"id":'+$(this).attr("img_id")+'}]';
        var post_data = {"khach":khach_id,"data":data};
        var jqxhr = $.post('update_khach_info_remove_img',post_data, function () {
        }).done(function () {
            location.reload();
        }).fail(function () {
        }).always(function () {
        });
    });

});
function close_overlay() {
    $(".start_overlay").hide();
}
var QueryString = function () {
    // This function is anonymous, is executed immediately and
    // the return value is assigned to QueryString!
    var query_string = {};
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        // If first entry with this name
        if (typeof query_string[pair[0]] === "undefined") {
            query_string[pair[0]] = decodeURIComponent(pair[1]);
            // If second entry with this name
        } else if (typeof query_string[pair[0]] === "string") {
            var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];
            query_string[pair[0]] = arr;
            // If third or later entry with this name
        } else {
            query_string[pair[0]].push(decodeURIComponent(pair[1]));
        }
    }
    return query_string;
}();
