package com.intelligrape.advancejquery

import grails.converters.JSON

class FormRemoteController {

    def index() {}

    def show() {
        render "show action"
    }

    def show2() {
        render params
    }

    def remoteField() {

    }

    def show3() {
        render "link............."
    }

    def jq() {}

    def remoteLink() {}

    def validateForm() {

    }

    def myAction() {
        render params
    }

    def simpleAjax() {}

    def getAjax() {}

    def ajaxAction2() {
        render params
    }

    def getJson() {}

    def loadAjax() {}

    def serialize() {}

    def serializeAction() {
        println "Sdfdsfs"
        println params
        render params
    }

    def getAction() {
        render "get"
    }

    def ajaxActionJSON(String name) {
        render([name: name, age: 24] as JSON)
//        render([name: name, age: 24])
//        render "saa"
    }

    def ajaxAction(String name) {
        println "Sdfsdfsf";
        render name
    }

    def loadAction() {
        render "xyz " + params.name
    }

    def demoAjax() {}

    def ajaxRequest(String name) {
        Enumeration<String> head = request.headerNames
        head.each {
            println it
        }
        println "Example"
        println request.getHeader("x-requested-with");
        println request.getHeader("content-type");
        render([name: name])
    }
}
