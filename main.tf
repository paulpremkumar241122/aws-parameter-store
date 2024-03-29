resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value

  overwrite = true

  key_id = "5ccefc9a-0cc1-49a5-a6b0-4ed8e995551c"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.vagdevi.store/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.vagdevi.store/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.vagdevi.store/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.vagdevi.store/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.vagdevi.store/", type = "String" },


    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.paw5sy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.vagdevi.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },


    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.vagdevi.store", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.vagdevi.store", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.vagdevi.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.vagdevi.store:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cvku0oeskh9l.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },

    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.paw5sy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    #{ name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.vagdevi.store:27017/users", type = "String" },

    { name = "roboshop.dev.rabbitmq.ampq_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cvku0oeskh9l.us-east-1.rds.amazonaws.com", type = "String" },

    #### Passwords will not be stored in git repos, In the companies it will be created manually . who have access will store this secret in parameter store....
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.ampq_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },

    #### modified for DB Clusters

    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com", type = "String" },

    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com", type = "String" },



    #################################  PROD PARAMETERS ############################################



    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.vagdevi.store/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.vagdevi.store/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.vagdevi.store/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.vagdevi.store/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.vagdevi.store/", type = "String" },


    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod.paw5sy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.vagdevi.store", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },


    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },


    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.vagdevi.store", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-prod.vagdevi.store", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.vagdevi.store", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.vagdevi.store:80", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cvku0oeskh9l.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },

    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod.paw5sy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    #{ name = "roboshop.prod.user.mongo_url", value = "mongodb://mongodb-prod.vagdevi.store:27017/users", type = "String" },

    { name = "roboshop.prod.rabbitmq.ampq_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cvku0oeskh9l.us-east-1.rds.amazonaws.com", type = "String" },

    #### Passwords will not be stored in git repos, In the companies it will be created manually . who have access will store this secret in parameter store....
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.ampq_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },

    #### modified for DB Clusters

    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod-0.cvku0oeskh9l.us-east-1.docdb.amazonaws.com", type = "String" },
  ]
}