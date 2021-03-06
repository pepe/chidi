(import uri)
(import chidi/utils :as utils)
(import chidi/http/response :as http/response)


(defn parse
  "Parses query string into janet struct under :query-params key.
   Keys are keywordized"
  [nextmw]
  (fn [req]
    (let [query-string (req :query-string)]
      (if (empty? query-string)
        (nextmw req)
        (do
          (-?>> query-string
            uri/parse-query
            (utils/map-vals uri/unescape)
            (put req :query-params))
          (if (nil? (req :query-params))
            (http/response/bad-request {:message "Query params have invalid format"})
            (nextmw req)))))))


