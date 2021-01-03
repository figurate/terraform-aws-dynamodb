from diagrams import Diagram
from diagrams.aws.database import DynamodbTable

with Diagram("AWS DynamoDB Table", show=False, direction="TB"):

    DynamodbTable("dynamodb table")
