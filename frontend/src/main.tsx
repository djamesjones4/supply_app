import { ApolloClient, InMemoryCache, ApolloProvider, gql } from '@apollo/client';
import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import App from './App.tsx'
import './index.css'

const client = new ApolloClient({
    uri: 'http://127.0.0.1:3000/graphql',
    cache: new InMemoryCache(),
});

// client
//     .query({
//         query: gql`
//       query GetLocations {
//         locations {
//           id
//           name
//           description
//           photo
//         }
//       }
//     `,
//     })
//     .then((result) => console.log(result));

createRoot(document.getElementById('root')!).render(
  <StrictMode>
      <ApolloProvider client={client}>
        <App />
      </ApolloProvider>
  </StrictMode>,
)
