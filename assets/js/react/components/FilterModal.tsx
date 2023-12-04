import * as React from "react"
import { Controller, useForm } from "react-hook-form"

import { Button } from "./Button"
import { Field } from "./FieldSet"
import { Input } from "./Input"
import { Label } from "./Label"
import { Modal } from "./Modal"
import { Slider } from "./Slider"

import {
  FIDE_RATING_MIN,
  FIDE_RATING_MAX,
  SearchParams,
} from "../types/SearchParams"

const computeStepLabels = (
  min: number,
  max: number,
  // The number of labels (+ 1) that should be produced.
  steps: number,
  // To which value numbers should be rounded to.
  round: number
) => {
  let labels = []
  const delta = Math.floor((max - min) / steps)
  for (let i = min; i <= max; i += delta) {
    if (i % round <= round / 2) {
      labels.push(i - (i % round))
    } else {
      labels.push(i + round - (i % round))
    }
  }

  labels[labels.length - 1] = max

  return labels
}

interface FilterModalProps {
  open: boolean
  defaultValues: SearchParams
  onClose: () => void
  onSubmit: (p: SearchParams) => void
}

export function FilterModal({
  open,
  defaultValues,
  onClose,
  onSubmit,
}: FilterModalProps) {
  const idPrefix = React.useId()

  const { watch, reset, control, register, setValue, handleSubmit } =
    useForm<SearchParams>({ defaultValues })

  // Default values are processed immediately despite the modal not being open
  // at the start. Furthermore, values are preserved after closing and
  // re-opening the modal, but we want closing the modal to signify canceling.
  // A simple workaround is to reset everytime we open the modal.
  React.useEffect(() => reset(defaultValues), [open])

  // Registration

  const controlFIDERating = register("fideRating")

  return (
    <Modal
      open={open}
      onClose={onClose}
      closeAfterTransition
      frame={{
        as: "form",
        title: "Filters",
        footer: (
          <Button className="float-right py-2" type="submit">
            Search coaches
          </Button>
        ),
        onSubmit: handleSubmit(onSubmit),
      }}
    >
      <div className="flex flex-col gap-12">
        <Field>
          <Label htmlFor={`${idPrefix}-fideRating`}>FIDE Rating:</Label>
          <p className="py-2 text-sm">
            Find coaches that have a rating within the specified range. Keep in
            mind, a higher rating does not necessarily mean a better coach{" "}
            <i>for you</i>. If you are unsure of this or do not have any
            preference, leave as is.
          </p>
          <div id={`${idPrefix}-fideRating`} className="mt-2 w-full px-4">
            <Controller
              control={control}
              name={controlFIDERating.name}
              render={({ field: { onChange, onBlur, value, ref } }) => (
                <Slider
                  ref={ref}
                  value={value}
                  onBlur={onBlur}
                  onChange={(event, newValue: any) => {
                    event && onChange(event)
                    setValue("fideRating.0", newValue[0])
                    setValue("fideRating.1", newValue[1])
                  }}
                  step={10}
                  min={FIDE_RATING_MIN}
                  max={FIDE_RATING_MAX}
                  marks={computeStepLabels(
                    FIDE_RATING_MIN,
                    FIDE_RATING_MAX,
                    7,
                    50
                  ).map((s) => ({ value: s, label: `${s}` }))}
                />
              )}
            />
            <div className="mt-16 flex flex-wrap items-center justify-center gap-x-20 gap-y-4">
              <div>
                <label className="text-neutral-850 text-sm font-medium">
                  Min:
                </label>
                <Input value={watch("fideRating.0")} disabled />
              </div>
              <div>
                <label className="text-neutral-850 text-sm font-medium">
                  Max:
                </label>
                <Input value={watch("fideRating.1")} disabled />
              </div>
            </div>
          </div>
        </Field>
      </div>
    </Modal>
  )
}