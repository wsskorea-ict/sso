window.onload = () => {
    const reg = new RegExp(/[^0-9]/g);

    document.querySelectorAll('.mfa-code-input').forEach(elem => {
        elem.addEventListener('focus', function () {
            this.select()
        })

        elem.addEventListener('input', function(){
            this.value = this.value.replaceAll(reg, '');
        })
    })

    document.querySelector('#mfa-form').addEventListener('submit', function(){
        let value = "";

        for(let i = 0; i < 6; i++){
            value += document.querySelector(`#code${i}`).value
        }

        document.querySelector('#mfa-form [name="mfa"]').value = value
    })
}