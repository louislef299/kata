export function add(numbers: string) {
    if (numbers == "") {
	return 0
    }

    const num = parseInt(numbers, 10);
    return num + num;
}

