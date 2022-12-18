import Head from 'next/head';
import { ChangeEvent, useState } from 'react';

export default function Home() {
  const [query, setQuery] = useState('');
  const [result, setResult] = useState(['']);
  const [errorMessage, setErrorMessage] = useState('');

  const onType = async (e: ChangeEvent<HTMLInputElement>) => {
    setQuery(e.target.value);

    let r = await fetch(`http://localhost:1984/${e.target.value}`, {
      method: 'get'
    });

    try {
      let data = await r.json();
      setResult(data);
    } catch {
      setResult(['']);
      if (e.target.value.length > 0) {
        setErrorMessage('No matches');
      } else {
        setErrorMessage('');
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
        <input type="text" value={query} onChange={onType} />
        {errorMessage.length > 0 && <p>{errorMessage}</p>}
        {result.map((result, i) => (
          <div key={result + i}>
            <p> {result[0]}</p>
          </div>
        ))}
      </main>
    </>
  );
}
