pool.query(`
  CREATE TABLE IF NOT EXISTS notifications (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    message TEXT NOT NULL,
    icon VARCHAR(50) NOT NULL,
    date VARCHAR(50) NOT NULL,
    time VARCHAR(50) NOT NULL
  )
`, (err) => {
  if (err) {
    console.error('Error creating notifications table:', err.stack);
  } else {
    console.log('Notifications table ready');
  }
});