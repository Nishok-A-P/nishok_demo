connection: "bq_optimization"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: awsapsoutheast2prod05 {
  label: "ap-south-east"
}

explore: awseucentral1prod02 {
  label: "eu-central"
}

explore: awsuseast1prod01 {
  label: "us-east"
}

explore: awsuswest2prod03 {
  label: "us-west"
}

explore: gcpasiasouth1prod07 {
  label: "asia-south"
}

explore: gcpuscentral1prod06 {
  label: "us-cental"
}