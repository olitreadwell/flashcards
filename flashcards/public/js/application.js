$(function () {
    // $("#homePageLogin, #homePageSignUp").hide();
    $("#homePageLoginButton").click(function(event){
        event.preventDefault;
        $("#homePageLogin").toggleClass("hidden");
        $("#homePageSignUp").addClass("hidden");
        $("#homePageLogin").css( "clear", "both" );
    });

    $("#homePageSignUpButton").click(function(event){
        event.preventDefault;
        $("#homePageSignUp").toggleClass("hidden");
        $("#homePageLogin").addClass("hidden");
        $("#homePageSignUp").css( "clear", "both" );

    });
});

//     // when the page loads
//     // console.log you clicked on the header when that occurs
//     $("#UserGuessInputSubmit").click(function(event) {
//         event.preventDefault();
//         $( "#userinputfield" ).css( "background-color", "red" );
//         // alert("jQuery reaches this line");

//         // var request = $.ajax({
//         //     url: "/play",
//         //     type: "POST",
//         //     data: { id : menuId },
//         //     dataType: "JSON"
//         //     complete: //function
//         //   });

//     });




    // This is called after the document has loaded in its entirety
    // This guarantees that any elements we bind to will exist on the page
    // when we try to bind to them

    // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
