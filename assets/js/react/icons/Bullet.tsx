import * as React from "react"

const SvgComponent = ({ ...props }) => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    xmlSpace="preserve"
    viewBox="0 0 512 512"
    {...props}
  >
    <path d="M297.236 327.676 184.324 214.763 35.455 363.632l-13.606-13.605L0 371.876l13.605 13.605 112.913 112.914h.001L140.124 512l21.849-21.849-13.605-13.606zM479.49 12.536c-3.024 1.166-70.873 27.806-141.442 93.595l67.821 67.821c65.787-70.565 92.429-138.417 93.595-141.441L512 0l-32.51 12.536zM306.914 118.696l-45.368 45.368-55.052 29.17 112.271 112.271 29.17-55.05 45.368-45.369z" />
  </svg>
)

export default SvgComponent
