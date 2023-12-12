import * as React from "react"

const SvgComponent = ({ ...props }) => (
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" {...props}>
    <path d="M22.777 23.384c-.147-.983-.91-1.857-2.058-2.507-3.059-1.95-3.595-5.268-2.184-7.45 1.799-.518 3.028-1.562 3.028-2.766 0-1.095-1.017-2.058-2.555-2.613a4.336 4.336 0 0 0 1.277-3.079c0-2.396-1.933-4.338-4.318-4.338s-4.318 1.942-4.318 4.338c0 1.204.488 2.292 1.276 3.078-1.538.555-2.556 1.518-2.556 2.613 0 1.218 1.259 2.273 3.093 2.784 1.434 2.175.824 5.451-2.332 7.463-1.107.646-1.834 1.513-1.975 2.477-1.989.842-3.235 2.047-3.235 3.386 0 2.544 4.498 4.607 10.047 4.607s10.047-2.062 10.047-4.607c0-1.339-1.247-2.545-3.237-3.387z" />
  </svg>
)

export default SvgComponent