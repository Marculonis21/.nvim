local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("htmldjango", {
        s("%%", {
                t("{% "), i(1), t(" %}")
            }),
        s("block", {
                t("{% block "), i(1, "name"), t(" %} "), i(2, "content"), t(" {% endblock %}")
            }),
        s("extends", {
                t("{% extends '"), i(1, "path"), t("' }% ")
            }),
        s("load", {
                t("{% load'"), i(1, "path"), t("' }% ")
            }),
        s("{{", {
                t("{{ "), i(1, "var"), t(" }}")
            }),
        s("for", {
                t("{% for "), i(1, "item"), t(" in "), i(2, "items"), t(" %}")
            }),
    })

