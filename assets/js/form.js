document.addEventListener('DOMContentLoaded', function () {
	const form = document.querySelector('form');
	if (!form) return;

	const fields = form.querySelectorAll('input, select');
	const dropdowns = form.querySelectorAll('.dropdown');

	form.addEventListener('submit', function (event) {
		event.preventDefault();
		let valid = true;

		fields.forEach(field => {
			if (field.classList.contains('required')) {
				const error = validateField(field);
				if (error) {
					console.log(`Ошибка в поле: ${field.name}, сообщение: ${error}`);
					if (field.type === 'hidden') {
						const dropdown = field.closest('.dropdown');
						if (dropdown) {
							const dropdownToggle = dropdown.querySelector('.dropdown-toggle');
							if (dropdownToggle) {
								showError(dropdownToggle, error);
							}
						}
					} else {
						showError(field, error);
					}
					valid = false;
				}
			}
		});

		dropdowns.forEach(dropdown => {
			const hiddenInput = dropdown.querySelector('input[type="hidden"]');
			if (hiddenInput && hiddenInput.classList.contains('required') && !hiddenInput.value.trim()) {
				console.log(`Ошибка в скрытом поле: ${hiddenInput.name}, сообщение: "This field is required"`);
				const dropdownToggle = dropdown.querySelector('.dropdown-toggle');
				if (dropdownToggle) {
					showError(dropdownToggle, 'This field is required');
				}
				valid = false;
			}
		});

		if (valid) {
			console.log('Form is valid, submitting form');
			form.submit();
		} else {
			console.log('Form is invalid, submission cancelled');
		}
	});


	fields.forEach(field => {
		field.addEventListener('input', function () {
			clearError(field);
		});
	});

	dropdowns.forEach(dropdown => {
		const items = dropdown.querySelectorAll('.dropdown-item');
		items.forEach(item => {
			item.addEventListener('click', function (e) {
				e.preventDefault();
				const selectedText = item.textContent.trim();
				const hiddenInput = dropdown.querySelector('input[type="hidden"]');
				const dropdownToggle = dropdown.querySelector('.dropdown-toggle');
				if (hiddenInput && dropdownToggle) {
					hiddenInput.value = selectedText;
					dropdownToggle.textContent = selectedText;
					hiddenInput.dispatchEvent(new Event('input'));
					clearError(dropdownToggle);
				}
			});
		});
	});

	function validateField(field) {
		if (field.classList.contains('required') && field.value.trim() === '') {
			return 'This field is required';
		}
		if (field.type === 'email' && !validateEmail(field.value)) {
			return 'Please enter a valid email address';
		}
		return null;
	}

	function showError(element, error) {
		let errorElement = element.parentNode.querySelector('.error');
		if (!errorElement) {
			errorElement = document.createElement('div');
			errorElement.classList.add('error');
			element.parentNode.appendChild(errorElement);
		}
		errorElement.textContent = error;
		element.classList.add('error-field');
	}

	function clearError(element) {
		let errorElement = element.parentNode.querySelector('.error');
		if (errorElement) {
			errorElement.remove();
		}
		element.classList.remove('error-field');
	}

	function validateEmail(email) {
		const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		return re.test(email);
	}
});
