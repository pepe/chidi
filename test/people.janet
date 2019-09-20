(import tester :prefix "")
(import http/fetch :as fetch)

(deftest "Home page"
  (test "Message" 
        (= (fetch/from "http://127.0.0.1:8130/") 
           "{\"message\":\"I am Chidi. Your soulmate.\"}")))

(deftest "Not found"
  (test "Message" (= (fetch/from "http://127.0.0.1:8130/not-found")
                     "{\"message\":\"Not Found.\"}")))
