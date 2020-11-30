$(document).ready(function () {

    // add a user from manage-users
    $("#saveUsers").submit(function (e) {
        e.preventDefault();
        var usersDTO = {}
        usersDTO["username"] = $("#username").val();
        usersDTO["password"] = $("#password").val();
        usersDTO["email"] = $("#email").val();
        var roles = [];
        roles.push($("#roles option:selected").val())

        console.log(usersDTO);
        usersDTO["roles"] = roles;
        // createUsersFromAdmin(usersDTO).then(r => console.log(r));
        $.ajax({
            url: '/api/users/add-users',
            type: 'post',
            headers: {
                "Content-type": "application/json",
                "Authorization": "Bearer " + localStorage.getItem('access_token')
            },
            data: JSON.stringify(usersDTO),
            success: function (usersCreatedDTO) {
                console.log(usersCreatedDTO);
            },
            error: function () {
                console.log('error');
            }
        })
    });

    // update a user from manage-users
    $("#submitForm").submit(function (e) {
        e.preventDefault();
        var usersDTO = {}
        usersDTO["username"] = $("#username").val();
        usersDTO["password"] = $("#password").val();
        usersDTO["email"] = $("#email").val();
        usersDTO["id"]=$("#idUser").val();
        var roles = [];
        roles.push($("#roles option:selected").val())

        console.log("usersDTO ", usersDTO);
        usersDTO["roles"] = roles;
        // createUsersFromAdmin(usersDTO).then(r => console.log(r));
        $.ajax({
            url: '/api/users/update-users',
            type: 'put',
            headers: {
                "Content-type": "application/json",
                "Authorization": "Bearer " + localStorage.getItem('access_token')
            },
            data: JSON.stringify(usersDTO),
            success: function (usersDTOupdated) {
                console.log(usersDTOupdated);
            },
            error: function (error) {
                console.log('error',error);
            }
        })
    });

});



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
}
