library(dplyr)
library(tidyr)
library(stringr)
library(googlesheets4)

# Taken and modified from https://lazappi.id.au/post/2016-06-13-gantt-charts-in-r/

# Take a data.frame containing tasks and build a Mermaid string
# Columns should be something like:
# task name, priority (like "crit"),  status (like "active" or "done"), label, start, end
tasks_to_string <- function(tasks_df) {
    tasks_df <- tasks_df %>%
        dplyr::rename(priority = is_deliverable) %>%
        dplyr::mutate(priority = if_else(priority == "TRUE", "crit", NA_character_)) %>%
        dplyr::mutate(status = NA_character_) %>%
        dplyr::arrange(order)

    task_list <- tasks_df %>%
        dplyr::group_split(order, section_name) %>%
        purrr::map_chr(
            ~ glue::glue_data(
                .,
                "    {task_name}: {priority}, {status}, {task_label}, {start_date}, {end_date}"
            ) %>%
                stringr::str_remove_all(" NA,") %>%
                stringr::str_flatten("\n")
        )

    stringr::str_c("    ", glue::glue("section {unique(tasks_df$section_name)}\n{task_list}\n\n")) %>%
        stringr::str_flatten("\n")
}

gantt_full_spec <- function(tasks_df, title = "Gantt Chart") {
    tasks_string <- tasks_to_string(tasks_df)
    gantt_string <- glue::glue("
    gantt
        dateFormat YYYY-MM-DD
        title {title}
        todayMarker off
        axisFormat \\%Y-\\%m

    {tasks_string}
    ")

    return(gantt_string)
}

# Produces a Gantt chart from a data frame of tasks
create_gantt_chart <- function(tasks_df, title = "Gantt Chart") {
    gantt_string <- gantt_full_spec(tasks_df = tasks_df, title = title)
    gantt <- DiagrammeR::mermaid(gantt_string)

    return(gantt)
}

timeline <- gs4_get("1lnwHenkWjUOfnBdmT1m1PdlPMnnzH-7IAAOzOLtg5VA") %>%
    read_sheet(1, col_types = "c") %>%
    filter(!is.na(section_name), !is.na(start_date))

# For copying to https://mermaid-js.github.io/mermaid-live-editor
gantt_full_spec(timeline, "Figure 3: Gantt chart of deliverables and timelines.") %>%
    clipr::write_clip()

# create_gantt_chart(timeline)

# Theme for chart
'{
  "theme": "neutral",
  "themeCSS": ".grid .tick {stroke: lightgrey; opacity: 0.2;}"
}'
