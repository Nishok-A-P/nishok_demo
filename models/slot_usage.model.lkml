connection: "bq_optimization"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#


explore: awsapsoutheast2prod05 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "ap-south-east"
}

explore: awseucentral1prod02 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "eu-central"
}

explore: awsuseast1prod01 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "us-east"
}

explore: awsuswest2prod03 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "us-west"
}

explore: gcpasiasouth1prod07 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "asia-south"
}

explore: gcpuscentral1prod06 {
  sql_always_where: ${count_of_jobs}>=158;;
  label: "us-cental"
}
