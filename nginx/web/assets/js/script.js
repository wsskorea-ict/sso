window.onload = () => {
    /** define document element **/
    const $inputs = document.querySelectorAll('.mfa-code-input');
    const $form = document.querySelector('#mfa-form');
    /** number filter regexp **/
    const reg = new RegExp(/[^0-9]/g);
    /** functions **/
    const getCode = () => [...$inputs].reduce((acc, cur) => acc + cur.value, "");
    const getInput = id => document.querySelector(`.mfa-code-input[data-code="${id}"]`);
    const focusInput = id => {
        const $input = getInput(id);
        if ($input) {
            if ($input.value) return focusInput(id + 1);
            $input.focus();
        }
    }
    const getId = elem => +elem.getAttribute('data-code')
    /** add event  **/
    $inputs.forEach(elem => {
        /** focus then select **/
        elem.addEventListener('focus', function () {
            this.select()
        })
        /** validation number and next focus **/
        elem.addEventListener('input', function (e) {
            this.value = this.value.replaceAll(reg, '');
            if (!this.value) return;
            if (getCode().length === 6) {
                document.querySelector('[name="otp"]').value = getCode();
                $form.submit();
                return;
            }
            focusInput(getId(this) + 1);
        })
        /** copy and paste then autofill code **/
        elem.addEventListener('paste', function (e) {
            const textArr = e.clipboardData.getData('text').replaceAll(reg, "").slice(1).split("");
            const startId = getId(this) + 1;
            for (const i in textArr) {
                getInput(startId + +i).value = textArr[+i]
            }
        })
        /** delete code **/
        elem.addEventListener('keydown', function(e) {
            if(e.code !== 'Delete' && e.code !== 'Backspace') return

            e.preventDefault();

            this.value = "";
            const $leftInput = getInput(getId(this) - 1);
            if($leftInput) {
                $leftInput.focus();
                $leftInput.select();
            }
        })
        /** move left, right **/
        elem.addEventListener('keyup', function(e) {
            const $leftInput = getInput(getId(this) - 1);
            const $rightInput = getInput(getId(this) + 1);

            if(e.code === 'ArrowLeft' && $leftInput) {
                $leftInput.focus();
                $leftInput.select();
            }
            if(e.code === 'ArrowRight' && $rightInput) {
                $rightInput.focus();
                $rightInput.select();
            }
        })
    })
    /** submit form **/
    $form.addEventListener('submit', function () {
        this.querySelector('[name="otp"]').value = getCode();
    })
}