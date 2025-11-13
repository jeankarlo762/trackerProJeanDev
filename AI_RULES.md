# AI Development Rules and Guidelines

This document outlines the core technologies and architectural rules for developing the application.

## Tech Stack Overview

*   **Framework:** React
*   **Language:** TypeScript
*   **Routing:** React Router
*   **Styling:** Tailwind CSS
*   **Component Library:** shadcn/ui (built on Radix UI)
*   **Icons:** `lucide-react`
*   **Project Structure:** Source code resides in `src/`. Pages are in `src/pages/`, and reusable components are in `src/components/`.
*   **State Management:** Simple React state management (e.g., `useState`, `useReducer`, Context API) should be prioritized unless complexity dictates otherwise.
*   **Build Tool:** Vite (implied by modern React setup).

## Development Rules and Library Usage

1.  **Component Structure:** All new components or hooks must be created in their own dedicated file within `src/components/` or `src/hooks/`. Components should aim to be small and focused (ideally under 100 lines).
2.  **Styling:** **Always** use Tailwind CSS for styling. Avoid inline styles or separate CSS files. Ensure designs are responsive by default.
3.  **UI Components:** Utilize components from the **shadcn/ui** library whenever possible for standard UI elements (Buttons, Cards, Forms, Dialogs, etc.). Do not modify the source files of shadcn/ui components; create wrappers or new components if customization is needed.
4.  **Icons:** Use the `lucide-react` package for all icons.
5.  **Routing:** Maintain all primary application routes within `src/App.tsx` using React Router.
6.  **Error Handling & Feedback:** Use a toast notification system (e.g., `react-hot-toast` if installed) to provide user feedback for success, error, and loading states. Avoid complex `try/catch` blocks unless specifically requested, allowing errors to bubble up for easier debugging.
7.  **File Naming:** Directory names must be all lower-case (e.g., `src/pages`). File names may use mixed-case (e.g., `UserProfile.tsx`).
8.  **Simplicity:** Prioritize simple, elegant solutions. Avoid over-engineering, complex abstractions, or implementing features beyond the immediate user request.