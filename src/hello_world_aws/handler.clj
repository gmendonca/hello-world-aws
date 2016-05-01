(ns hello-world-aws.handler
  (:require [compojure.core :refer :all]
            [compojure.route :as route]
            [ring.middleware.defaults :refer [wrap-defaults site-defaults]]
            [ring.adapter.jetty :as jetty])
  (:gen-class))

(defroutes app-routes
  (GET "/" [] "Olá mundo")
  (route/not-found "Not Found"))

(def app
  (wrap-defaults app-routes site-defaults))

(defn -main []
  (jetty/run-jetty app {:port 8000}))
