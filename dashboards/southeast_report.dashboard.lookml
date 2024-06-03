- dashboard: southeast_report
  title: Southeast Report
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: aOOaLeE002hKTGXi7oPnxF
  elements:
  - title: Day wise Bytes Processed
    name: Day wise Bytes Processed
    model: slot_usage
    explore: awsapsoutheast2prod05
    type: looker_column
    fields: [awsapsoutheast2prod05.bytes, awsapsoutheast2prod05.max_date]
    filters:
      awsapsoutheast2prod05.max_date: before 2024/05/17
    sorts: [awsapsoutheast2prod05.max_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Bytes Processed, orientation: left, series: [{axisId: awsapsoutheast2prod05.bytes,
            id: awsapsoutheast2prod05.bytes, name: Bytes}], showLabels: true, showValues: true,
        valueFormat: '[>999999]#.0,,\M;[>999] 0.0,"K";0', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Org ID: awsapsoutheast2prod05.org_id
    row: 2
    col: 0
    width: 12
    height: 6
  - title: Day wise Slot Usage
    name: Day wise Slot Usage
    model: slot_usage
    explore: awsapsoutheast2prod05
    type: looker_column
    fields: [awsapsoutheast2prod05.total_slot_ms, awsapsoutheast2prod05.max_date]
    filters:
      awsapsoutheast2prod05.max_date: before 2024/05/17
    sorts: [awsapsoutheast2prod05.max_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Slot Usage, orientation: left, series: [{axisId: awsapsoutheast2prod05.total_slot_ms,
            id: awsapsoutheast2prod05.total_slot_ms, name: Total Slot Ms}], showLabels: true,
        showValues: true, valueFormat: '[>999999]#.0,,\M;[>999] 0.0,"K";0', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Day
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Org ID: awsapsoutheast2prod05.org_id
    row: 8
    col: 0
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Before May 17"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 12
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"On and After May 17"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 12
    width: 12
    height: 2
  - title: Day wise Slot Usage
    name: Day wise Slot Usage (2)
    model: slot_usage
    explore: awsapsoutheast2prod05
    type: looker_column
    fields: [awsapsoutheast2prod05.total_slot_ms, awsapsoutheast2prod05.max_date]
    filters:
      awsapsoutheast2prod05.max_date: after 2024/05/17
    sorts: [awsapsoutheast2prod05.max_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Slot Usage, orientation: left, series: [{axisId: awsapsoutheast2prod05.total_slot_ms,
            id: awsapsoutheast2prod05.total_slot_ms, name: Total Slot Ms}], showLabels: true,
        showValues: true, valueFormat: '[>999999]#.0,,\M;[>999] 0.0,"K";0', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Day
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      awsapsoutheast2prod05.total_slot_ms: "#3C7672"
    defaults_version: 1
    listen:
      Org ID: awsapsoutheast2prod05.org_id
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Day wise Bytes Processed
    name: Day wise Bytes Processed (2)
    model: slot_usage
    explore: awsapsoutheast2prod05
    type: looker_column
    fields: [awsapsoutheast2prod05.bytes, awsapsoutheast2prod05.max_date]
    filters:
      awsapsoutheast2prod05.max_date: after 2024/05/17
    sorts: [awsapsoutheast2prod05.max_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Bytes Processed, orientation: left, series: [{axisId: awsapsoutheast2prod05.bytes,
            id: awsapsoutheast2prod05.bytes, name: Bytes}], showLabels: true, showValues: true,
        valueFormat: '[>999999]#.0,,\M;[>999] 0.0,"K";0', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Day
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      awsapsoutheast2prod05.bytes: "#3C7672"
    defaults_version: 1
    listen:
      Org ID: awsapsoutheast2prod05.org_id
    row: 2
    col: 12
    width: 12
    height: 6
  - title: Minimum and Maximum value of bytes processed for each Organization ID
    name: Minimum and Maximum value of bytes processed for each Organization ID
    model: slot_usage
    explore: awsapsoutheast2prod05
    type: looker_grid
    fields: [awsapsoutheast2prod05.org_id, awsapsoutheast2prod05.min_bytes_processed,
      awsapsoutheast2prod05.max_bytes_processed]
    sorts: [awsapsoutheast2prod05.min_bytes_processed desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      awsapsoutheast2prod05.min_bytes_processed: Minimum Bytes Processed
      awsapsoutheast2prod05.max_bytes_processed: Maximum Bytes Processed
    series_cell_visualizations:
      awsapsoutheast2prod05.min_bytes_processed:
        is_active: true
      awsapsoutheast2prod05.max_bytes_processed:
        is_active: true
    series_value_format:
      awsapsoutheast2prod05.min_bytes_processed: '[>999999]#.0,,\M;[>999] 0.0,"K";0'
      awsapsoutheast2prod05.max_bytes_processed: '[>999999]#.0,,\M;[>999] 0.0,"K";0'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Processed, orientation: left, series: [{axisId: awsapsoutheast2prod05.total_slot_ms,
            id: awsapsoutheast2prod05.total_slot_ms, name: Total Slot Ms}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen: {}
    row: 14
    col: 0
    width: 24
    height: 5
  filters:
  - name: Org ID
    title: Org ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: popover
      options:
      - '600003'
      - '600016'
      - '600019'
      - '600025'
      - '600029'
    model: slot_usage
    explore: awsapsoutheast2prod05
    listens_to_filters: []
    field: awsapsoutheast2prod05.org_id
