import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { gql, useMutation } from '@apollo/client';

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <p>
          Edit <code>src/App.tsx</code> and save to test HMR
        </p>
      </div>
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>
    </>
  )
}

function CreateUser() {
    let input;
    const [createUser, { data, loading, error }] = useMutation(CREATE_USER);

    if (loading) return 'Submitting...';
    if (error) return `Submission error! ${error.message}`;
    return (
        <div>
            <form
                onSubmit={e => {
                    e.preventDefault();
                    createUser({ variables: { type: input.value } });
                    input.value = '';
                }}
            >
                <input
                    ref={node => {
                        input = node;
                    }}
                />
                <button type="submit">Create User</button>
            </form>
        </div>
    );
}

const CREATE_USER = gql`

  mutation create_user {
  createUser(
    input: {
      firstName: "Another Random",
      lastName: "username",
      email: "myemail@email.com",
      userType: base
    }
  ) {
    success
    userId
  }
    
}
`;

// export default App
export default CreateUser