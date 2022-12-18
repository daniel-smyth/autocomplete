import Head from 'next/head';
import { ChangeEvent, useState } from 'react';

export default function Home() {
  const [searchQuery, setSearchQuery] = useState('');
  const [results, setResults] = useState(['']);
  const [error, setError] = useState('');

  const handleInput = async (e: ChangeEvent<HTMLInputElement>) => {
    if (e.target.value.length < searchQuery.length) {
      setError('');
    }

    setSearchQuery(e.target.value);

    let r = await fetch(`http://localhost:1984/${e.target.value}`, {
      method: 'get'
    });

    try {
      let data = await r.json();
      setResults(data);
      setError('');
    } catch {
      setResults(['']);
      if (
        e.target.value.length > 0 ||
        e.target.value.length < searchQuery.length
      ) {
        setError('No matches');
      }
    }
  };

  return (
    <>
      <Head>
        <title>Autocomplete</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <main>
        <input type="text" value={searchQuery} onChange={handleInput} />
        {error.length > 0 && <p>{error}</p>}
        {results.map((result, i) => (
          <div key={result + i}>
            <p> {result[0]}</p>
          </div>
        ))}
      </main>
    </>
  );
}
