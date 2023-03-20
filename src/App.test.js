import { render, screen } from '@testing-library/react';
import App from './App';

test('renders some text', () => {
  render(<App />);
  const linkElement = screen.getByText(/Hello From build!/i);
  expect(linkElement).toBeInTheDocument();
});
