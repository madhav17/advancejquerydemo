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

    def getJson() {}

    def loadAjax() {}

    def serialize() {}

    def serializeAction() {
        render params
    }

    def getAction() {
        render "get"
    }

    def ajaxActionJSON(String name) {
        render([name: name, age: 24] as JSON)
    }

    def ajaxAction(String name) {
        render name
    }

    def loadAction() {
        render "xyz " + params.name
    }

    def demoAjax() {}

    def ajaxRequest(String name) {
        render([name: name])
    }
}
