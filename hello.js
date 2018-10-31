if (process.argv.findIndex(item => item === '--fruit') > 1) {
  const fruit = process.argv[process.argv.findIndex(item => item.includes('fruit')) + 1];
  console.log(`The fruit is: ${fruit}`);
} else {
  throw Error('Please provide --fruit {fruit}');
}