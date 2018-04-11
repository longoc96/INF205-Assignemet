$('#login').click(()=>{
    $('#loading').css('display','block')
    setTimeout(() => {
        window.location.href = './login.html';
    }, 2000);
})
$('#signin').click(()=>{
    $('#loading').css('display','block')
    setTimeout(() => {
        window.location.href = './sigin.html';
    }, 2000);
})