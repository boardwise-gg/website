import * as React from "react"

import { PageIntro } from "../components/PageIntro"

export function Contact() {
  return (
    <>
      <PageIntro eyebrow="Contact Us" title="Questions or Comments?">
        <p>
          Tell us how we can improve our site by leaving an issue at{" "}
          <a
            target="_blank"
            className="underline"
            href="https://github.com/boardwise-gg/website"
          >
            our GitHub repo
          </a>
          .
        </p>
      </PageIntro>
    </>
  )
}
