import * as React from "react"

const SvgComponent = ({ ...props }) => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    xmlSpace="preserve"
    stroke="currentColor"
    viewBox="0 0 512 512"
    {...props}
  >
    <path d="M0 477.031h512v8H0zM112.688 387.016v60.75h78.625v-79.844c-25.516 7.75-51.735 14.219-78.625 19.094zM8.688 397.906v49.859h78.625v-56.734c-25.719 3.688-51.954 6-78.625 6.875zM216.438 359.719v88.047h79.125V326.5c-25.329 12.609-51.75 23.719-79.125 33.219zM320.313 313.5v134.266h79.375V261.547c-24.813 19.062-51.344 36.437-79.375 51.953zM424.25 241.672v206.094h79.5V158.953c-23.359 29.828-50.031 57.516-79.5 82.719zM413.078 57.688l27.656 23.172C352.953 190.391 185.391 329.125 0 349.766v22.141c183.875-6.5 381.109-132.453 483.547-255.172L512 140.563V26.969l-98.922 30.719z" />
  </svg>
)

export default SvgComponent