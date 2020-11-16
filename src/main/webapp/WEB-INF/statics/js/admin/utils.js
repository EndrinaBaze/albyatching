$(document).ready(function () {

    $("#search-form").submit(function (event) {

        //stop submit the form, we will post it manually.
        event.preventDefault();

        fire_ajax_submit();

    });
    $("#login-form").submit(function (e) {
        e.preventDefault();
        $.ajax({
            url: '/api/users/signin',
            type: 'post',
            data: $(this).serialize(),
            success: function (token) {
                localStorage.setItem('access_token', token);
                window.location.href='http://localhost:8080/admin';
            },
            error: function () {
            }
        })
    });
    $("#register-form").submit(function (e) {
        e.preventDefault();
        var usersDTO = {}
        usersDTO["username"] = $("#username").val();
        usersDTO["password"] = $("#password").val();
        usersDTO["email"] = $("#email").val();
        var roles = [];
        roles.push($("#role option:selected").text())

        console.log(usersDTO);
        usersDTO["roles"] = roles;

        $.ajax({
            url: '/api/users/signup',
            type: 'post',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(usersDTO),
            success: function () {
                alert('success');
            },
            error: function () {
                alert('error');
            }
        })
    });


    $("#saveUsers").submit(function (e) {
        e.preventDefault();
        var usersDTO = {}
        usersDTO["username"] = $("#username").val();
        usersDTO["password"] = $("#password").val();
        usersDTO["email"] = $("#email").val();
        var roles = [];
        roles.push($("#role option:selected").text())

        console.log(usersDTO);
        usersDTO["roles"] = roles;
       // createUsersFromAdmin(usersDTO).then(r => console.log(r));
        $.ajax({
            url: '/api/users/add-users',
            type: 'post',
            contentType: "application/json; charset=utf-8",
            authorization: "Bearer "+localStorage.getItem('access_token'),
            data: JSON.stringify(usersDTO),
            success: function (usersCreatedDTO) {
                console.log(usersCreatedDTO);
            },
            error: function () {
                console.log('error');
            }
        })
    });

    $("#submitForm").submit(function (e) {
        e.preventDefault();
        var usersDTO = {}
        usersDTO["username"] = $("#username").val();
        usersDTO["password"] = $("#password").val();
        usersDTO["email"] = $("#email").val();
        var roles = [];
        roles.push($("#role option:selected").val())

        console.log("usersDTO ", usersDTO);
        usersDTO["roles"] = roles;
        // createUsersFromAdmin(usersDTO).then(r => console.log(r));
        $.ajax({
            url: '/api/users/update-users',
            type: 'put',
            contentType: "application/json; charset=utf-8",
            authorization: "Bearer "+localStorage.getItem('access_token'),
            data: JSON.stringify(usersDTO),
            success: function (usersCreatedDTO) {
                console.log(usersCreatedDTO);
            },
            error: function () {
                console.log('error');
            }
        })
    });
});

function fire_ajax_submit() {

    var search = {}
    search["username"] = $("#username").val();

    $("#btn-search").prop("disabled", true);

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/api/search",
        data: JSON.stringify(search),
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {

            var json = "<h4>Ajax Response</h4>&lt;pre&gt;"
                + JSON.stringify(data, null, 4) + "&lt;/pre&gt;";
            $('#feedback').html(json);

            console.log("SUCCESS : ", data);
            $("#btn-search").prop("disabled", false);

        },
        error: function (e) {

            var json = "<h4>Ajax Response</h4>&lt;pre&gt;"
                + e.responseText + "&lt;/pre&gt;";
            $('#feedback').html(json);

            console.log("ERROR : ", e);
            $("#btn-search").prop("disabled", false);

        }
    });

}


function createUsersFromAdmin(usersDTO) {
    var usersDTO = {}
    usersDTO["username"] = $("#username").val();
    usersDTO["password"] = $("#password").val();
    usersDTO["email"] = $("#email").val();
    var roles = [];
    roles.push($("#roles option:selected").val())
    usersDTO["roles"] = roles;
    console.log(usersDTO);
    return new Promise(
        (resolve, reject) => {

            console.log("create users from admin loading");

            $.ajax({
                url: "/api/users/add-users",
                type: "POST",
                headers: {
                    "Content-type": "application/json",
                    "Authorization": "Bearer " + localStorage.getItem('access_token')
                },
                data: JSON.stringify(usersDTO)
            }).done(function (usersDtoCreated) {
               // localStorage.setItem('access_token', token.access_token);
                //  localStorage.setItem('refresh_token', token.refresh_token);
                // resetQueryStringUrl()
                // resolve(token);
                console.log(usersDtoCreated);
            }).fail(function (jqXHR, error, errorThrown) {
                if (jqXHR.status && jqXHR.status == 401) {
                    // ajax call to refresh token
                    //   refreshToken(redirectUrl);
                    console.log("401 ::: " + jqXHR.responseText);
                }
                if (jqXHR.status && jqXHR.status == 422) {
                    // ajax call to refresh token
                    //   refreshToken(redirectUrl);
                    console.log("422 ::: " + jqXHR.responseText);
                } else if (jqXHR.status && jqXHR.status == 400) {
                    if (redirectUrl) {
                        console.log('if')
                        //  location.href = redirectUrl;
                        localStorage.clear();
                    } else {
                        console.log('else')
                        localStorage.clear();
                        //  location.href = "/c/portal/logout";
                    }
                }
            });
        });
};

function updateUsersFromAdmin(usersDTO) {
    var usersDTO = {}
    usersDTO["username"] = $("#username").val();
    usersDTO["password"] = $("#password").val();
    usersDTO["email"] = $("#email").val();
    var roles = [];
    roles.push($("#roles option:selected").val())
    usersDTO["roles"] = roles;
    console.log(usersDTO);
    return new Promise(
        (resolve, reject) => {

            console.log("update users from admin loading");

            $.ajax({
                url: "/api/users/update-users",
                type: "PUT",
                headers: {
                    "Content-type": "application/json",
                    "Authorization": "Bearer " + localStorage.getItem('access_token')
                },
                data: JSON.stringify(usersDTO)
            }).done(function (usersDtoCreated) {
                // localStorage.setItem('access_token', token.access_token);
                //  localStorage.setItem('refresh_token', token.refresh_token);
                // resetQueryStringUrl()
                // resolve(token);
                console.log(usersDtoCreated);
            }).fail(function (jqXHR, error, errorThrown) {
                if (jqXHR.status && jqXHR.status == 401) {
                    // ajax call to refresh token
                    //   refreshToken(redirectUrl);
                    console.log("401 ::: " + jqXHR.responseText);
                }
                if (jqXHR.status && jqXHR.status == 422) {
                    // ajax call to refresh token
                    //   refreshToken(redirectUrl);
                    console.log("422 ::: " + jqXHR.responseText);
                } else if (jqXHR.status && jqXHR.status == 400) {
                    if (redirectUrl) {
                        console.log('if')
                        //  location.href = redirectUrl;
                        localStorage.clear();
                    } else {
                        console.log('else')
                        localStorage.clear();
                        //  location.href = "/c/portal/logout";
                    }
                }
            });
        });
};


function refreshToken(redirectUrl) {

    return new Promise(
        (resolve, reject) => {

            console.log("refresh : token   loading");
            var params = {
                "grant_type": "refresh_token",
                "refresh_token": localStorage.getItem("refresh_token")
            };
            $.ajax({
                url: localStorage.getItem("prefix_url") + "/oauth/token",
                type: "POST",
                headers: {
                    "Content-type": "application/x-www-form-urlencoded; charset=utf-8",
                    "Authorization": "Basic " + btoa("fooClientIdPassword2:secret")
                },
                data: $.param(params)
            }).done(function (token) {
                localStorage.setItem('access_token', token.access_token);
                localStorage.setItem('refresh_token', token.refresh_token);
                resetQueryStringUrl()
                resolve(token);
            }).fail(function (jqXHR, error, errorThrown) {
                if (jqXHR.status && jqXHR.status == 401) {
                    // ajax call to refresh token
                    refreshToken(redirectUrl);
                    console.log("401 ::: " + jqXHR.responseText);
                } else if (jqXHR.status && jqXHR.status == 400) {
                    if (redirectUrl) {
                        console.log('if')
                        location.href = redirectUrl;
                        localStorage.clear();
                    } else {
                        console.log('else')
                        localStorage.clear();
                        location.href = "/c/portal/logout";
                    }
                }
            });
        });
};

function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        if (sParam == 'photoUrl') {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                if (sParameterName[1].startsWith('https')) {
                    if (sURLVariables[i + 1].split('=')[0] == 'alt') {
                        var photoUrl = sURLVariables[i].substring(9) + '&' + sURLVariables[i + 1];
                        return sParameterName[1] === undefined ? true : photoUrl;
                    } else {
                        var photoUrl = sURLVariables[i].substring(9);
                        return sParameterName[1] === undefined ? true : photoUrl;
                    }
                } else {
                    return sParameterName[1] === undefined ? true : sParameterName[1];
                }
            }
        } else {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
    }
}

function resetQueryStringUrl() {
    var uri = window.location.toString();
    if (uri.includes("?") && !(uri.includes("events") || uri.includes("news") || uri.includes("elearning"))) {
        var clean_uri = uri.substring(0, uri.indexOf("?"));
        window.history.replaceState({}, document.title, clean_uri);
    }
}

/*
 ** Serialize form
 */
$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

/* saveGeneralAjaxFunction - general function for post and put requests
 * @param url : full url composed by base server url + path of method in server side
 * @type_f   type_f : type of ajax call PUT/POST
 * @json_data   json_data : data in the body
 * @feedback_msg   feedback_msg : success mesagge
 */
function saveGeneralAjaxFunction(url, type_f, json_data, redirectUrl, callback) {
    $.ajax({
        url: url,
        type: type_f,
        data: json_data,
        contentType: "application/json",
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("access_token")
        }
    }).done(callback).fail(function (err) {
        if (err.status == 401) {
            refreshToken(redirectUrl).then(
                res => {
                    console.log("refresh : token   success");
                    saveGeneralAjaxFunction(url, type_f, json_data, redirectUrl, callback);

                }
            ).catch(err => {
                toastr.error('An error has occured. Please try again.', 'Error!');
                console.log('on refresh token : ', err);

            })
        }
    });
};

/* getAjaxGeneralFunction - general function for get
 * @param url : full url composed by base server url + path of method in server side
 * @callback   callback : data after succes ajax call
 */
function getAjaxGeneralFunction(url, redirectUrl, callback) {
    $.ajax({
        url: url,
        type: "GET",
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("access_token")
        }
    }).done(callback).fail(function (err) {
        if (err.status == 401) {
            refreshToken(redirectUrl).then(
                res => {
                    console.log("refresh : token   success");
                    getAjaxGeneralFunction(url, redirectUrl, callback);

                }
            ).catch(err => {
                toastr.error('An error has occured. Please try again.', 'Error!');
                console.log('on refresh token : ', err);
            })
        }
    });
};

function deserializeForm(data, frm) {
    $.each(data, function (key, value) {
        var ctrl = $('[name=' + key + ']', frm);
        switch (ctrl.prop("type")) {
            case "radio":
            case "checkbox":
                ctrl.each(function () {
                    if ($(this).attr('value') == value) $(this).attr("checked", value);
                });
                break;
            default:
                ctrl.val(value);
        }
    });

}

function deserializeFormData(data, form) {
    $.each(data, function (key, value) {
        var ctrl = $('[name=' + key + ']', form);
        switch (ctrl.prop("type")) {
            case "radio":
            case "checkbox":
                ctrl.each(function () {
                    if (value) $(this).iCheck('check');
                });
                break;
            case "select-one":
                if (value) {
                    ctrl.val(value.uuid);
                }
                break;
            default:
                if (ctrl.prop("type") != "file") {
                    ctrl.val(value);
                }
        }
    });
}

function isoFormatDate(dateMiliseconds) {
    var date = new Date(dateMiliseconds);
    var isoDate = date.toISOString(); // 2014-08-05T19:42:51.429Z
    var newDate = isoDate.substr(0, 10); // 2014-08-05
    return ' ' + newDate;
}

function findAgencyPath(url) {
    var retval;
    if (url.split("group/").pop().substr(0, url.split("group/").pop().indexOf('/')) == "") {
        retval = url.split("group/").pop();
    } else {
        retval = url.split("group/").pop().substr(0, url.split("group/").pop().indexOf('/'));
    }
    return retval;
}

function getLanguage(agency) {
    if (agency == "IT") {
        return ita
    } else if (agency == "US") {
        return usa
    } else if (agency == "FR") {
        return fra
    } else if (agency == "ES") {
        return esp
    } else if (agency == "UK") {
        return gbr
    } else if (agency == "bra") {
        return bra
    } else if (agency == "ger") {
        return ger
    } else if (agency == "rus") {
        return rus
    }
}

function getCurrentAgency(agency) {
    if (agency == "IT") {
        return "/ita"
    } else if (agency == "US") {
        return "/usa"
    } else if (agency == "FR") {
        return "/fra"
    } else if (agency == "ES") {
        return "/esp"
    } else if (agency == "UK") {
        return "/gbr"
    } else if (agency == "bra") {
        return bra
    } else if (agency == "ger") {
        return ger
    } else if (agency == "rus") {
        return rus
    }
}

// remove invalid chars from field.
function removeInvalidChars(field) {
    var str = field.value;

    str = str.replace(/(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|\ud83c[\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|\ud83c[\ude32-\ude3a]|\ud83c[\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff]|\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])/g, '');
    ;
    field.value = str;

    var regex = /(<([^>]+)>)/ig;
    field.value = field.value.replace(regex, "");
}

setTimeout(function () {
    $("input, textarea").keyup(function (e) {
        var regex = /(<([^>]+)>)/ig;
        this.value = this.value.replace(regex, "");
    });
}, 3000);

// check if user is using the site from mobile
function checkIsMobile() {
    if (navigator.userAgent.indexOf("Mobile") > 0) {
        return true;
    } else {
        return false;
    }
}

var slideIndex;
var postId;
// script for slides/images in post
showSlides(slideIndex, postId);

function plusSlides(n, postId) {
    showSlides(slideIndex += n, postId);
}

function currentSlide(n, postId) {
    showSlides(slideIndex = n, postId);
}

function showSlides(n, postId) {
    // var slideIndex;
    var i;
    var slides = document.getElementsByClassName("mySlides" + postId);
    var dots = document.getElementsByClassName("dot" + postId);
    // if (n == 1) { slideIndex = 1 }
    if (n > slides.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = slides.length
    }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    // console.log(slideIndex);
    if (slideIndex) {
        // console.log(slideIndex);
        slides[slideIndex - 1].style.display = "block";
        slides[slideIndex - 1].style.opacity = "1";
        dots[slideIndex - 1].className += " active";
    }
}

// uppy init for mobile
function uppyForMobile() {
    uppy = Uppy.Core({
        restrictions: {
            // maxFileSize: 300000,
            // maxNumberOfFiles: 5,
            // minNumberOfFiles: 2,
            allowedFileTypes: ['image/*', '.m4v', '.mov', '.mp4']
        },
        autoProceed: true,
        allowMultipleUploads: true
        // locale: Uppy.locales.it_IT
    })
        .use(Uppy.Dashboard, {
            inline: true,
            autoProceed: true,
            // width: 500,
            height: 200,
            note: 'Images and video only',
            showProgressDetails: true,
            hideUploadButton: true,
            proudlyDisplayPoweredByUppy: false,
            id: 'body',
            target: '#drag-drop-areaMobile',
            locale: {
                strings: {
                    dropPaste: '' + getLanguage(localStorage.getItem('currentAgency'))["pubPrf.dragFilesHere"] + ' ',
                }
            }
        })
        .use(Uppy.Tus, {
            endpoint: localStorage.getItem('tusd_url') + "/",
            chunkSize: 30 * 1024 * 1024
        })
        .use(Uppy.FileInput, {
            target: ".addFileButtonMobile",
            pretty: true,
            if: "addFileButtonMobile",
            inputName: 'files[]',
        })

    uppy.on('complete', (result) => {
        console.log('Upload complete! Weâ€™ve uploaded these files:', result.successful)
        if (postToEditFlag) {
            for (var i = 0; i < result.successful.length; i++) {
                fileOrder++;
                imageToPost = {
                    post: postToEdit.uuid,
                    link: result.successful[i].uploadURL,
                    order: fileOrder,
                    type: result.successful[i].type
                };
                insertPostUrl(imageToPost, result.successful[i].id);
                multimediaUrls.push(imageToPost);
            }
        } else {
            if (fileOrder == 0) {
                // create post
                createPost(result.successful);
            } else {
                // attach media to created post
                for (var i = 0; i < result.successful.length; i++) {
                    fileOrder++;
                    imageToPost = {
                        post: createdPost.uuid,
                        link: result.successful[i].uploadURL,
                        order: fileOrder,
                        type: result.successful[i].type
                    };
                    insertPostUrl(imageToPost, result.successful[i].id);
                }
            }

        }

        $("#createNew").removeAttr('disabled');
        $("#editPost").removeAttr("disabled");
        $("#editPost").addClass("comment-send-focused");
        $("#createNewMobile").removeAttr('disabled');
        $("#editNewMobile").removeAttr("disabled");
    })

    uppy.on('file-added', (result) => {
        console.log('result: ', result);

        $("#createNew").attr("disabled", "");
        $("#editPost").attr("disabled", "");
        $("#editPost").removeClass("comment-send-focused");
        $("#createNewMobile").attr("disabled", "");
        $("#editNewMobile").attr("disabled", "");

        var Li = '<li class="uppy-DashboardItem is-resumable addPhotoLi" onclick="addFileFunction()"><div class="uppy-DashboardItem-preview"><div class="uppy-DashboardItem-previewInnerWrap" style="box-shadow: none;border: 2px solid rgb(218, 220, 224);border-style: dashed;"><i class="fa fa-plus" style="color: rgb(218, 220, 224);font-size: 20px;"></i></div></div></li>';
        $(".uppy-DragDrop-container").css("z-index", "-1");
        $("#converted_url").empty();
        // $("#drag-drop-areaMobile").show();
        // $(".mobileForm").css("margin-bottom", "-35px");
        // $("#mobileCreate_Edit").height("400px");
        $(".uppy-Dashboard-inner").show();
        if ($(".addPhotoLi").length == 0) {
            console.log("here")
            setTimeout(function () {
                $(".addPhotoLi").remove();
                $(Li).appendTo(".uppy-Dashboard-files");
            }, 1000);
        }

        setTimeout(function () {
            $('.uppy-Dashboard-files').scrollLeft($(this).width());
            $('[title="' + result.name + '"].uppy-DashboardItem')
                .find('.uppy-DashboardItem-preview')
                .append('<div class="overlayDelete"><i class="textDelete fa fa-times" onclick="removeNewImage(\'' + result.id + '\', \'' + result.name + '\')"></i></div>');
        }, 1000);
    })
}

// uppy init for desktop
function uppyForDesktop() {
    uppy = Uppy.Core({
        restrictions: {
            // maxFileSize: 300000,
            // maxNumberOfFiles: 5,
            // minNumberOfFiles: 2,
            allowedFileTypes: ['image/*', '.m4v', '.mov', '.mp4']
        },
        autoProceed: true,
        allowMultipleUploads: true
        // locale: Uppy.locales.it_IT
    })
        .use(Uppy.Dashboard, {
            inline: true,
            autoProceed: true,
            // width: 500,
            height: 200,
            note: 'Images and video only',
            showProgressDetails: true,
            hideUploadButton: true,
            proudlyDisplayPoweredByUppy: false,
            id: 'body',
            target: '#drag-drop-area',
            locale: {
                strings: {
                    dropPaste: '' + getLanguage(localStorage.getItem('currentAgency'))["pubPrf.dragFilesHere"] + ' ',
                }
            }
        })
        .use(Uppy.Tus, {
            endpoint: localStorage.getItem('tusd_url') + "/",
            chunkSize: 30 * 1024 * 1024
        })
        .use(Uppy.FileInput, {
            target: ".addFileButton",
            pretty: true,
            if: "addFileButton",
            inputName: 'files[]',
        })
        .use(Uppy.Url, {
            target: Uppy.Dashboard,
            companionUrl: localStorage.getItem('tusd_url') + "/",
            locale: {}
        })
    // .use(Uppy.DragDrop, {
    //     target: '#createthatshithere',
    //     width: '100%',
    //     height: '100%',
    //     note: null,
    //     id: 'createthatshithere',
    //     locale: {}
    // })


    uppy.on('complete', (result) => {
        console.log('Upload complete! Weâ€™ve uploaded these files:', result.successful);
        if (postToEditFlag) {
            for (var i = 0; i < result.successful.length; i++) {
                fileOrder++;
                imageToPost = {
                    post: postToEdit.uuid,
                    link: result.successful[i].uploadURL,
                    order: fileOrder,
                    type: result.successful[i].type
                };
                insertPostUrl(imageToPost, result.successful[i].id);
                multimediaUrls.push(imageToPost);
            }
        } else {
            if (fileOrder == 0) {
                // create post
                createPost(result.successful);
            } else {
                // attach media to created post
                for (var i = 0; i < result.successful.length; i++) {
                    fileOrder++;
                    imageToPost = {
                        post: createdPost.uuid,
                        link: result.successful[i].uploadURL,
                        order: fileOrder,
                        type: result.successful[i].type
                    };
                    insertPostUrl(imageToPost, result.successful[i].id);
                }
            }

        }
        $("#createNew").removeAttr('disabled');
        $("#editPost").removeAttr("disabled");
        $("#editPost").addClass("comment-send-focused");
        $("#createNewMobile").removeAttr('disabled');
        $("#editNewMobile").removeAttr('disabled');
    })

    uppy.on('upload', (data) => {
        // data object consists of `id` with upload ID and `fileIDs` array
        // with file IDs in current upload
        // data: { id, fileIDs }
        // console.log(`Starting upload ${id} for files ${fileIDs}`);
        console.log('data: ', data);

        $("#createNew").attr("disabled", "");
        $("#editPost").attr("disabled", "");
        $("#editPost").removeClass("comment-send-focused");
        $("#createNewMobile").attr("disabled", "");
        $("#editNewMobile").attr("disabled", "");
    })

    uppy.on('file-added', (result) => {
        console.log('file added: ', result);

        $("#createNew").attr("disabled", "");
        $("#editPost").attr("disabled", "");
        $("#editPost").removeClass("comment-send-focused");
        $("#createNewMobile").attr("disabled", "");
        $("#editNewMobile").attr("disabled", "");

        $(".addPhotoLi").remove();
        $("#createPostDiv").addClass("modal fade in");
        $("#createPostDiv").css("display", "block");
        $(".getPostscleanPostschuidi").show();
        $(".fa-smile-o").show();
        $("#drag-drop-area").show();
        $(".uppy-DragDrop-container").css("z-index", "-1");
        $("#converted_url").empty();
        $("#drag-drop-area").removeClass("dragOver");
        $(".button-create").trigger("click");
        $(".uppy-Dashboard-inner").show();

        // $(".uppy-Dashboard-inner").appendTo("#dropzone_files");
        $(".dropzoneArea").appendTo(".uppy-Dashboard-innerWrap");

        var Li = '<li class="uppy-DashboardItem is-resumable addPhotoLi" onclick="addFileFunction()"><div class="uppy-DashboardItem-preview"><div class="uppy-DashboardItem-previewInnerWrap" style="box-shadow: none;border: 2px solid rgb(218, 220, 224);border-style: dashed;"><i class="fa fa-plus" style="color: rgb(218, 220, 224);font-size: 20px;"></i></div></div></li>';


        $(".uppy-DragDrop-container").css("z-index", "-1");
        $("#converted_url").empty();
        $("#drag-drop-areaMobile").show();
        $(".mobileForm").css("margin-bottom", "-35px");
        // $("#mobileCreate_Edit").height("400px");
        $(".uppy-Dashboard-inner").show();

        if ($(".addPhotoLi").length == 0) {
            console.log("here")
            setTimeout(function () {
                $(".addPhotoLi").remove();
                $(Li).appendTo(".uppy-Dashboard-files");
            }, 1000);
        }

        $(".file-upload-message").hide();

        setTimeout(function () {
            $('.uppy-Dashboard-files').scrollLeft($(this).width());
            // $('[id*="' + result.id.substr(0, result.id.indexOf('/')) + '"]')
            $('[title="' + result.name + '"].uppy-DashboardItem')
                .find('.uppy-DashboardItem-preview')
                .append('<div class="overlayDelete"><i class="textDelete fa fa-times" onclick="removeNewImage(\'' + result.id + '\', \'' + result.name + '\')"></i></div>');
        }, 1000);
    })

    uppy.on('file-removed', (file) => {
        console.log('file removed: ', file);
        if ($(".uppy-DashboardItem").length == 1) {
            $(".addPhotoLi").hide();
            $(".uppy-Dashboard-inner").hide();
            $(".dropzoneArea").appendTo("#drag-drop-area");
        }
    })

    // $(".addFileButton").click(function () {
    //     if ($(".uppy-Dashboard-browse").length > 0) {
    //         $(".uppy-Dashboard-browse").trigger("click");
    //         $("#drag-drop-area").show();
    //     }
    // });
}

// https://gist.github.com/matt-curtis/9044134
// link grabber for link preview in create post
function linkGrabber() {
    var LinkGrabber = {
        textarea: null,

        /* Textarea Management */

        attach_ta: function () {
            if (LinkGrabber.textarea != null) return;

            var textarea = LinkGrabber.textarea = document.createElement("textarea");
            textarea.setAttribute("style", "position: fixed; width: 100%; margin: 0; top: 0; bottom: 0; right: 0; left: 0;");
            textarea.style.opacity = "0.000000000000000001";

            var body = document.getElementsByTagName("formi")[0];
            body.appendChild(textarea);

            textarea.oninput = LinkGrabber.evt_got_link;
        },

        detach_ta: function () {
            if (LinkGrabber.textarea == null) return;
            var textarea = LinkGrabber.textarea;

            textarea.parentNode.removeChild(textarea);
            LinkGrabber.textarea = null;
        },

        /* Event Handlers */

        evt_drag_over: function () {
            LinkGrabber.attach_ta(); //Create TA overlay
        },

        evt_got_link: function () {
            var link = LinkGrabber.textarea.value;

            $('.emoji-wysiwyg-editor').append(link);

            if ($(".uppy-DashboardItem").length == 0) {
                var text1 = "<button class='clearPreview'><span>Ã—</span></button><a class='link-preview' href='" + link + "'></a>";
                document.getElementById("converted_url").innerHTML = text1;
                microlink('.link-preview');
                $(".clearPreview").click(function () {
                    $("#converted_url").empty();
                })
            }

            $("#createNew").removeAttr("disabled");
            $("#createNewMobile").removeAttr("disabled");

            LinkGrabber.detach_ta();
        },

        evt_drag_out: function (e) {
            if (e.target == LinkGrabber.textarea) LinkGrabber.detach_ta();
        },

        /* Start/Stop */

        start: function () {
            document.addEventListener("dragover", LinkGrabber.evt_drag_over, false);
            document.addEventListener("dragenter", LinkGrabber.evt_drag_over, false);

            document.addEventListener("mouseup", LinkGrabber.evt_drag_out, false);
            document.addEventListener("dragleave", LinkGrabber.evt_drag_out, false);
        },

        stop: function () {
            document.removeEventListener("dragover", LinkGrabber.evt_drag_over);
            document.removeEventListener("dragenter", LinkGrabber.evt_drag_over);

            document.removeEventListener("mouseup", LinkGrabber.evt_drag_out);
            document.removeEventListener("dragleave", LinkGrabber.evt_drag_out);

            LinkGrabber.detach_ta();
        }
    };

    LinkGrabber.start();
}

function getCookie(key) {
    var keyValue = document.cookie.match('(^|;) ?' + key + '=([^;]*)(;|$)');
    return keyValue ? keyValue[2] : null;
}

function modifyLinksWithVersion() {
    var pair;
    var pair2;
    for (var i = 0; i < document.getElementsByTagName("link").length; i++) {
        if (document.getElementsByTagName("link")[i].href && !document.getElementsByTagName("link")[i].href.includes("?")) {
            document.getElementsByTagName("link")[i].href += '?v=' + releaseVersion;
        } else if (document.getElementsByTagName("link")[i].href.includes("?v=")) {
            pair = document.getElementsByTagName("link")[i].href;
            pair = pair.split("=");
            pair[0] += "=" + releaseVersion;
            document.getElementsByTagName("link")[i].href = pair[0];
        }
    }

    for (var j = 0; j < document.getElementsByTagName("script").length; j++) {
        if (document.getElementsByTagName("script")[j].src && !document.getElementsByTagName("script")[j].src.includes('?')) {
            document.getElementsByTagName("script")[j].src += '?v=' + releaseVersion;
        } else if (document.getElementsByTagName("script")[i].src.includes("?v=")) {
            pair2 = document.getElementsByTagName("script")[i].src;
            pair2 = pair2.split("=");
            pair2[0] += "=" + releaseVersion;
            document.getElementsByTagName("script")[i].src = pair2[0];
        }
    }
}