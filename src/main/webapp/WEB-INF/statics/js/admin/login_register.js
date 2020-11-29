$(document).ready(function () {

    // admin login
    $("#login-form").submit(function (e) {
        e.preventDefault();
        $.ajax({
            url: '/api/users/signin',
            type: 'post',
            data: $(this).serialize(),
            success: function (token) {
                console.log(token);
                localStorage.setItem('access_token', token);
                //  window.location.href='http://localhost:8080/admin';
                $.ajax({
                    url: '/admin',
                    type: 'get',
                    headers: {
                        "Content-type": "application/json",
                        "Authorization": "Bearer " + localStorage.getItem('access_token')
                    },
                    success: function (data) {
                        document.open();
                        document.write(data);
                        document.close();
                    },
                    error: function () {
                        console.log('error');
                    }
                })
            },
            error: function () {
            }
        })
    });

    // register user
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
            headers: {
                "Content-type": "application/json"
            },
            data: JSON.stringify(usersDTO),
            success: function () {
                alert('success');
            },
            error: function () {
                alert('error');
            }
        })
    });

});